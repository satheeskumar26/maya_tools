import maya.cmds as cmds
import maya.OpenMaya as OpenMaya

import quad_rig.Tools as Tools
import imp
imp.reload(Tools)


def front_leg(template,rig_scale,side):
    
    # Check if jnt exist
    front_hip_JNT = template['front_hip{}_JNT'.format(side)]   
    if not cmds.objExists(front_hip_JNT): # Check if jnt exist
        OpenMaya.MGlobal.displayError("'front_hip{}_JNT'.format(side) is missing !!!")
        return
        
    # Run ones to remove constraint and mirror expression
    front_leg_mirror_exp = cmds.listConnections(front_hip_JNT, type='expression')
    #template_con = cmds.listRelatives(template['front_con_NUL'], f=1, ad=1, type='constraint')  
    
    if side == '_L':
        cmds.delete(front_leg_mirror_exp)
        cmds.setAttr('{}.visibility'.format(template['front_ctrl_NUL']), 1)
        cmds.parent(template['front_ctrl_NUL'], w=1)
        cmds.makeIdentity(template['front_ctrl_NUL'], apply=1, t=1, r=1, s=1)
    
    # Front leg chain names   
    leg_chain = [template['front_hip{}_JNT'.format(side)], template['front_knee{}_JNT'.format(side)], 
                 template['front_ankle{}_JNT'.format(side)], template['front_toeExtra{}_JNT'.format(side)], 
                 template['front_toe{}_JNT'.format(side)], template['front_toeMid{}_JNT'.format(side)], 
                 template['front_toeTip{}_JNT'.format(side)]]
    
    # Unlock chain
    jnt_radius = []
    for jnt in leg_chain: 
        lockedAttrs = cmds.listAttr(jnt, l=1)
        get_jnt_radius = cmds.getAttr('{}.radius'.format(jnt))
        jnt_radius.append(get_jnt_radius)

        for attr in lockedAttrs:
            cmds.setAttr('{}.{}'.format(jnt, attr), l=0) 
     
    # Create and parent front_leg to main nul  
    front_leg_nul = cmds.group(n='front_leg{}_NUL'.format(side), p=template['template_CTRL'], em=1)         
    cmds.parent(template['front_hip{}_JNT'.format(side)], front_leg_nul)
    cmds.parent(front_leg_nul, w=1)
    cmds.parent(template['front_toe{}_JNT'.format(side)], template['front_ankle{}_JNT'.format(side)]) 
    cmds.parent(template['front_hip_follow{}_JNT'.format(side)], template['front_hip{}_JNT'.format(side)])
    cmds.makeIdentity(front_leg_nul, apply=1, t=0, r=1, s=1, n=0, pn=1, a=1)
    
    # Set jnt radius
    for jnt, value in zip(leg_chain, jnt_radius):
        cmds.setAttr('{}.radius'.format(jnt),value*rig_scale)
        
    # Create cluster for poleVecto
    front_poleVector_start_cls = cmds.cluster('{}.cv[0]'.format(template['front_poleVector{}_CRV'.format(side)]))[1]
    front_poleVector_start_cls = cmds.rename(front_poleVector_start_cls, 'front_poleVector_start{}_CLS'.format(side))
    front_poleVector_end_cls = cmds.cluster('{}.cv[1]'.format(template['front_poleVector{}_CRV'.format(side)]))[1]
    front_poleVector_end_cls = cmds.rename(front_poleVector_end_cls, 'front_poleVector_end{}_CLS'.format(side))
   
    # Create positions list
    ctrl_positions = [template['front_hip{}_JNT'.format(side)], template['front_toeExtra{}_JNT'.format(side)], 
                      template['front_toeMid{}_JNT'.format(side)], template['front_toeMid{}_JNT'.format(side)], 
                      template['front_footFront{}_LOC'.format(side)], template['front_footBack{}_LOC'.format(side)], 
                      template['front_toe{}_JNT'.format(side)], template['front_knee{}_LOC'.format(side)],
                      template['front_hip{}_JNT'.format(side)], template['front_ankle{}_JNT'.format(side)],
                      template['front_knee{}_LOC'.format(side)], template['front_knee{}_JNT'.format(side)]]
    
    # Create ctrl_nuls list
    ctrl_nuls = [template['front_hips{}_NUL'.format(side)], template['front_ankle{}_NUL'.format(side)], 
                 template['front_ball{}_NUL'.format(side)], template['front_toe{}_NUL'.format(side)], 
                 template['front_footFront{}_NUL'.format(side)], template['front_footBack{}_NUL'.format(side)], 
                 template['front_foot{}_NUL'.format(side)], template['front_knee{}_NUL'.format(side)], 
                 template['front_top_distance{}_LOC'.format(side)], template['front_bot_distance{}_LOC'.format(side)],
                 front_poleVector_start_cls, front_poleVector_end_cls]
                 
    # Query nubers of CV's in curve
    curve_cvs = cmds.ls('{}.cv[*]'.format(template['front_foot{}_CTRL'.format(side)]), fl=True)
                 
    # Move ctrl to position using list
    for position, nul in zip(ctrl_positions, ctrl_nuls): # move ctrl to position  
        parent_con = cmds.parentConstraint(position, nul)
        cmds.setAttr('{}.rotateX'.format(nul),0)
        if side == '_L':
            cmds.setAttr('{}.rotateX'.format(nul),0)
        else:
            cmds.setAttr('{}.rotateX'.format(nul),-180)
        if 'front_foot_' in str(nul): # move front_foot_L_CTRL to grid level
            for cv in curve_cvs: # 8 is the point of CV in the curve
                cv_position = cmds.pointPosition(cv, w=True)
                cmds.move(cv_position[0],0,cv_position[2], cv, absolute=True)
        cmds.delete(parent_con)
        
    # Parent to front_leg_nul/ main nul                             
    cmds.parent(template['front_hips{}_NUL'.format(side)],front_leg_nul)
    cmds.parent(template['front_hip{}_JNT'.format(side)],template['front_hips{}_CTRL'.format(side)])
    
    # Foot setup
    cmds.parent(template['front_ankle{}_NUL'.format(side)], template['front_ball{}_CTRL'.format(side)]) 
    front_ankle_cons_nul = cmds.duplicate(template['front_ankle{}_NUL'.format(side)],n='front_ankle_cons{}_NUL'.format(side), po=1)
    cmds.parent(template['front_ankle{}_NUL'.format(side)],front_ankle_cons_nul)
    cmds.parent(template['front_ball{}_NUL'.format(side)],template['front_footFront{}_CTRL'.format(side)])
    cmds.parent(template['front_toe{}_NUL'.format(side)],template['front_footFront{}_CTRL'.format(side)])
    cmds.parent(template['front_footFront{}_NUL'.format(side)],template['front_footBack{}_CTRL'.format(side)])
    cmds.parent(template['front_footBack{}_NUL'.format(side)],template['front_foot{}_CTRL'.format(side)])
    cmds.parent(front_poleVector_start_cls,template['front_knee{}_CTRL'.format(side)])
    cmds.parent(front_poleVector_end_cls.format(side),template['front_knee{}_JNT'.format(side)])
    cmds.parent(template['front_foot{}_NUL'.format(side)],w=1)
    
    # IK Handles for foot
    front_leg_ik = cmds.ikHandle(n='front_leg{}_IK'.format(side), sj=template['front_hip{}_JNT'.format(side)], 
                                 ee=template['front_ankle{}_JNT'.format(side)],sol='ikRPsolver')[0]
    front_ankle_ik = cmds.ikHandle(n='front_ankle{}_IK'.format(side), sj=template['front_ankle{}_JNT'.format(side)], 
                                   ee=template['front_toe{}_JNT'.format(side)],sol='ikSCsolver')[0]
    front_ball_ik = cmds.ikHandle(n='front_ball{}_IK'.format(side), sj=template['front_toe{}_JNT'.format(side)], 
                                  ee=template['front_toeMid{}_JNT'.format(side)],sol='ikSCsolver')[0]
    front_toe_ik = cmds.ikHandle(n='front_toe{}_IK'.format(side), sj=template['front_toeMid{}_JNT'.format(side)], 
                                 ee=template['front_toeTip{}_JNT'.format(side)],sol='ikSCsolver')[0]
    
    # Parent IK Handles acconingly
    cmds.parent(front_leg_ik, template['front_ankle{}_CTRL'.format(side)])  # parent ik to ctrls
    cmds.parent(front_ankle_ik, template['front_ankle{}_CTRL'.format(side)])
    cmds.parent(front_ball_ik, template['front_ball{}_CTRL'.format(side)])
    cmds.parent(front_toe_ik, template['front_toe{}_CTRL'.format(side)])
    
    # PoleVectorConstraint and rotate front_ankle_CTRL alont with knee_CTRL      
    cmds.poleVectorConstraint(template['front_knee{}_CTRL'.format(side)], front_leg_ik)
    cmds.aimConstraint(template['front_hips{}_CTRL'.format(side)], front_ankle_cons_nul, mo=1, weight=1, 
                       aimVector=(0, 1, 0), upVector=(0, 0, -1), worldUpType='object', 
                       worldUpObject=template['front_knee{}_CTRL'.format(side)]) # To rotate front_ankle_CTRL alont with knee_CTRL
    cmds.parent(template['front_knee{}_NUL'.format(side)], front_leg_nul)

    # Knee Follow
    follow_jnts = [template['front_hip_follow{}_JNT'.format(side)],template['front_foot_follow{}_JNT'.format(side)]]
    
    # Set visibility and radius for knee Follow
    for jnt in follow_jnts:
        cmds.setAttr('{}.visibility'.format(jnt), 1)
        get_jnt_radius = cmds.getAttr('{}.radius'.format(template['front_hip{}_JNT'.format(side)]))
        cmds.setAttr('{}.radius'.format(jnt),get_jnt_radius*.2)
    
    # Create IK and parent acoddingly
    cmds.parent(template['front_hip_follow{}_JNT'.format(side)], template['front_hips{}_CTRL'.format(side)])
    front_follow_ik = cmds.ikHandle(n='front_follow{}_IK'.format(side), sj=template['front_hip_follow{}_JNT'.format(side)], 
                                    ee=template['front_foot_follow{}_JNT'.format(side)],sol='ikSCsolver')[0]
    cmds.parent(front_follow_ik, template['front_foot{}_CTRL'.format(side)])
    
    # Create pointConstraint for knee Follow
    front_knee_follow_local_loc = cmds.spaceLocator(n='front_knee_follow_local{}_LOC'.format(side))[0]
    cmds.parent(front_knee_follow_local_loc, template['front_knee{}_CTRL'.format(side)], r=1)
    cmds.parent(front_knee_follow_local_loc, template['front_hip_follow{}_JNT'.format(side)])
    front_knee_follow_world_loc = cmds.duplicate(front_knee_follow_local_loc,n='front_knee_follow_world{}_LOC'.format(side))
    cmds.pointConstraint(template['front_hip_follow{}_JNT'.format(side)],template['front_foot{}_CTRL'.format(side)], 
                                 front_knee_follow_local_loc, mo=1)
    cmds.parent(front_knee_follow_world_loc, front_leg_nul)
    
    # Create parentConstraint and connection for front_foot_CTRL.Follow
    knee_follow_parentCon = cmds.parentConstraint(front_knee_follow_local_loc,front_knee_follow_world_loc, 
                                                  template['front_knee{}_NUL'.format(side)], mo=0)[0]
    front_knee_follow_local_revers_UTL = cmds.createNode('reverse',n='front_knee_follow_local{}_revers_UTL'.format(side))
    cmds.connectAttr('{}.Follow'.format(template['front_foot{}_CTRL'.format(side)]),
                     '{}.input.inputX'.format(front_knee_follow_local_revers_UTL))
    cmds.connectAttr('{}.output.outputX'.format(front_knee_follow_local_revers_UTL),
                     '{}.front_knee_follow_world{}_LOCW1'.format(knee_follow_parentCon, side))
    cmds.connectAttr('{}.Follow'.format(template['front_foot{}_CTRL'.format(side)]),
                     '{}.front_knee_follow_local{}_LOCW0'.format(knee_follow_parentCon, side))
                     
    # Bend jnt
    bend_jnts = [template['front_hip_dup{}_JNT'.format(side)],template['front_knee_dup{}_JNT'.format(side)],
                   template['front_ankle_dup{}_JNT'.format(side)]]
    
    # Set visibility and radius for knee Follow
    for jnt in bend_jnts:
        cmds.setAttr('{}.visibility'.format(jnt), 1)
        get_jnt_radius = cmds.getAttr('{}.radius'.format(template['front_hip{}_JNT'.format(side)]))
        cmds.setAttr('{}.radius'.format(jnt),get_jnt_radius*.1)
        
    cmds.parent(template['front_hip_dup{}_JNT'.format(side)], template['front_hips{}_CTRL'.format(side)])
    front_leg_dup_ik = cmds.ikHandle(n='front_leg_dup{}_IK'.format(side), sj=template['front_hip_dup{}_JNT'.format(side)], 
                                     ee=template['front_ankle_dup{}_JNT'.format(side)],sol='ikRPsolver')[0]
    cmds.parent(front_leg_dup_ik, front_ankle_cons_nul)
    cmds.poleVectorConstraint(template['front_knee{}_CTRL'.format(side)], front_leg_dup_ik)
    
    bend_stiffness_utl = cmds.listConnections(template['front_foot{}_CTRL'.format(side)], type='clamp', d=1, s=0)[0]
    bend_revers_utl = cmds.listConnections(template['front_foot{}_CTRL'.format(side)], type='multDoubleLinear', d=1, s=0)[0]
    cmds.connectAttr('{}.rotateX'.format(template['front_hip_dup{}_JNT'.format(side)]), '{}.input.inputR'.format(bend_stiffness_utl), f=1)
    cmds.connectAttr('{}.output'.format(bend_revers_utl), '{}.rotateX'.format(template['front_ankle{}_NUL'.format(side)]), f=1)
    cmds.setAttr('{}.radius'.format(template['front_clavicle{}_JNT'.format(side)]), rig_scale*3)

    # Leg twist
    twist_jnts = [template['front_hip_twist{}_JNT'.format(side)],template['front_knee_twist{}_JNT'.format(side)],
                  template['front_ankle_twist{}_JNT'.format(side)], template['front_toe_twist{}_JNT'.format(side)]]
    
    # Set Leg twist visibility and radius
    for jnt in twist_jnts:
        cmds.setAttr('{}.visibility'.format(jnt), 1)
        get_jnt_radius = cmds.getAttr('{}.radius'.format(template['front_hip{}_JNT'.format(side)]))
        cmds.setAttr('{}.radius'.format(jnt),get_jnt_radius*.2)
        if str(jnt) == 'front_hip_twist{}_JNT'.format(side) or str(jnt) == 'front_toe_twist{}_JNT'.format(side):
            cmds.setAttr('{}.radius'.format(jnt),get_jnt_radius*2)
    
    # Move Leg twist jnt
    front_hip_pointCon = cmds.pointConstraint(template['front_knee{}_JNT'.format(side)], 
                                              template['front_knee_twist{}_JNT'.format(side)], mo=0)
    front_toe_pointCon = cmds.pointConstraint(template['front_toe{}_JNT'.format(side)], 
                                              template['front_toe_twist{}_JNT'.format(side)], mo=0)
    cmds.parent(template['front_hip_twist{}_JNT'.format(side)], template['front_knee_twist{}_JNT'.format(side)])
    cmds.parent(template['front_knee_twist{}_JNT'.format(side)], template['front_knee{}_JNT'.format(side)])
    cmds.parent(template['front_toe_twist{}_JNT'.format(side)], template['front_ankle_twist{}_JNT'.format(side)])
    cmds.delete(front_hip_pointCon, front_toe_pointCon)

    # Create Leg twist IK
    front_hip_twist_ik = cmds.ikHandle(n='front_hip_twist{}_IK'.format(side), 
                                       sj=template['front_knee_twist{}_JNT'.format(side)], 
                                       ee=template['front_hip_twist{}_JNT'.format(side)], sol='ikSCsolver')[0]
    front_Toe_twist_ik = cmds.ikHandle(n='front_Toe_twist{}_IK'.format(side), 
                                       sj=template['front_ankle_twist{}_JNT'.format(side)], 
                                       ee=template['front_toe_twist{}_JNT'.format(side)], sol='ikSCsolver')[0]
    cmds.parent(front_hip_twist_ik, template['front_hips{}_CTRL'.format(side)])
    cmds.parent(front_Toe_twist_ik, template['front_ankle{}_CTRL'.format(side)])
    
    # Connect stratch
    cmds.parent(template['front_top_distance{}_LOC'.format(side)], template['front_hips{}_CTRL'.format(side)])
    cmds.parent(template['front_bot_distance{}_LOC'.format(side)], template['front_ankle{}_CTRL'.format(side)])
    
    # Main jnt stratch
    cmds.disconnectAttr('{}.translateY'.format(template['front_knee{}_JNT'.format(side)]), 
                        '{}.knee_Y_value'.format(template['front_foot{}_CTRL'.format(side)]))
    cmds.disconnectAttr('{}.translateY'.format(template['front_ankle{}_JNT'.format(side)]), 
                        '{}.ankle_Y_value'.format(template['front_foot{}_CTRL'.format(side)]))
    cmds.disconnectAttr('{}.translateY'.format(template['front_hip_twist{}_JNT'.format(side)]), 
                        '{}.Twist_Hip_Y_Value'.format(template['front_foot{}_CTRL'.format(side)]))

    distance_utl = cmds.listConnections(template['front_foot{}_CTRL'.format(side)], type='addDoubleLinear', d=0, s=1)
    
    for utl in distance_utl: # ['front_distance_add_ankle_L_UTL', 'front_distance_add_knee_L_UTL', 'front_twist_hip_distance_L_UTL']
        if 'distance_add_ankle' in utl:
            cmds.connectAttr('{}.output'.format(utl), '{}.translateY'.format(template['front_ankle{}_JNT'.format(side)]), f=1)
        elif 'distance_add_knee' in utl:
            cmds.connectAttr('{}.output'.format(utl), '{}.translateY'.format(template['front_knee{}_JNT'.format(side)]), f=1)
        elif 'twist_hip_distance' in utl:
            cmds.connectAttr('{}.output'.format(utl), '{}.translateY'.format(template['front_hip_twist{}_JNT'.format(side)]), f=1)
            
    # Creat clavicle 
    cmds.parent(template['front_clavicle{}_NUL'.format(side)], w=1)
    if 'front_' in str(front_hip_JNT):
        spine = template['spine_01_CTRL'] # flip this 
    else:
        spine = template['spine_03_CTRL'] # flip this 
    point_con = cmds.pointConstraint(spine, template['front_clavicle{}_NUL'.format(side)])
    
    if side == '_L':
        vector = 1
    else:
        vector = -1
    aim_con = cmds.aimConstraint(template['front_hips{}_CTRL'.format(side)], template['front_clavicle{}_NUL'.format(side)], 
                       mo=0, weight=1, aimVector=(vector, 0, 0), upVector=(0, vector, 0), worldUpType='vector')
    cmds.delete(point_con, aim_con)
    cmds.parent(front_leg_nul, template['front_clavicle{}_CTRL'.format(side)])
            
    # Lock ctrl Attr
    ctrl_list = [template['front_hips{}_CTRL'.format(side)], template['front_ankle{}_CTRL'.format(side)], 
                 template['front_ball{}_CTRL'.format(side)], template['front_toe{}_CTRL'.format(side)], 
                 template['front_footFront{}_CTRL'.format(side)], template['front_footBack{}_CTRL'.format(side)], 
                 template['front_foot{}_CTRL'.format(side)], template['front_knee{}_CTRL'.format(side)], 
                 template['front_knee{}_CTRL'.format(side)], template['front_clavicle{}_CTRL'.format(side)]]
                 
    for ctrl in ctrl_list:
        if 'front_hips_' in str(ctrl) or 'front_foot_' in str(ctrl):
            Tools.lock_hide_attr(ctrl, tx=0, ty=0, tz=0, rx=0, ry=0, rz=0)
        elif 'front_knee_' in str(ctrl):
            Tools.lock_hide_attr(ctrl, tx=0, ty=0, tz=0)
        elif 'front_clavicle_' in str(ctrl):
            Tools.lock_hide_attr(ctrl, rx=0, ry=0, rz=0)
        else:
            Tools.lock_hide_attr(ctrl,rx=0)
          
    # Clean up
    cmds.delete(template['front_toeExtra{}_JNT'.format(side)])
    cmds.parent(template['front_foot{}_NUL'.format(side)], template['cog_CTRL'])
    cmds.parent(template['front_poleVector{}_NUL'.format(side)], template['DONOTOUCH_NUL'])
    
    if side == '_R':
        #cmds.parent(front_leg_nul, template['cog_CTRL'])
        cmds.delete(template['front_con_NUL'], template['front_ctrl_NUL'])
    
    # Parent to cog
    return(template['front_clavicle{}_NUL'.format(side)], template['front_foot{}_NUL'.format(side)], template['front_poleVector{}_NUL'.format(side)])
    
               
# improvments to make :       
# Fix typo


            
    
            