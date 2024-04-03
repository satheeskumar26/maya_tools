import maya.cmds as cmds
import maya.OpenMaya as OpenMaya
import maya.mel as mel

import quad_rig.Tools as Tools
import imp
imp.reload(Tools)


def spine(template, rig_scale, number_of_jnt=6):

    # Check if jnt exist
    body_hld = template['body_HLD']   
    if not cmds.objExists(body_hld): # Check if jnt exist
        OpenMaya.MGlobal.displayError("'body_hld' is missing !!!")
        return
    
    # clean up spin setup
    cmds.parent(template['spine_curve_NUL'], w=1)
    cmds.delete(template['spin_CRV'], ch=1)

    # Freeze ctrls
    cmds.parent(template['body_NUL'], w=1)
    cmds.makeIdentity(template['body_NUL'], apply=1, t=1, r=1, s=1)
    
    # Create positions list
    ctrl_positions = [template['body_HLD'], template['spine_01_HLD'], 
                      template['spine_02_HLD'], template['spine_03_HLD']]
    
    # Create ctrl_nuls list
    ctrl_nuls = [template['body_NUL'], template['spine_01_NUL'], 
                 template['spine_02_NUL'], template['spine_03_NUL']]

    # Move ctrl to position using list
    for position, nul in zip(ctrl_positions, ctrl_nuls): # move ctrl to position  
        parent_con = cmds.parentConstraint(position, nul)
        cmds.delete(parent_con)
    
    # Dup curve
    spin_len = cmds.arclen(template['spin_CRV'])
    spin_upv_crv = cmds.duplicate(template['spin_CRV'], n='spin_upv_CRV')[0]
    cmds.move(0, (spin_len*0.5), 0, spin_upv_crv)
    
    # Create motionpath
    spread_evenly = 1/(number_of_jnt-1)
    spin_jnt=[]
    
    for i in range(number_of_jnt):
        # Create motion_path for up vector curve
        loc = cmds.spaceLocator(n='spin_upv_0{}_LOC'.format(i))[0]
        motion_path_upv = Tools.motion_path(obj_name=loc, crv=spin_upv_crv, name=loc.split('upv_UTL')[0], parametic_len=0, follow=True, follow_axis=2, 
                          up_axis=1, world_up_type=2, world_up_vector=[0, 1, 0], world_up_object=template['cog_CTRL'], inverse_up=False, 
                          inverse_front=True, bank=False, start_time_u=spread_evenly*i)
        cmds.parent(loc, template['spine_curve_NUL'])
        cmds.connectAttr('{}.scale'.format(template['scale_expose_NUL']),'{}.scale'.format(loc))
        
        # Create motion_path for main curve                
        jnt = cmds.joint(n='spin_upv_0{}_JNT'.format(i))       
        motion_path_main = Tools.motion_path(obj_name=jnt, crv=template['spin_CRV'], name=loc.split('_UTL')[0], parametic_len=0, follow=True, follow_axis=2, 
                          up_axis=1, world_up_type=1, world_up_vector=[0, 1, 0], world_up_object=loc, inverse_up=False, 
                          inverse_front=True, bank=False, start_time_u=spread_evenly*i)
        cmds.setAttr('{}.radius'.format(jnt),5*rig_scale)
        cmds.parent(jnt, template['spine_curve_NUL'])
        cmds.connectAttr('{}.scale'.format(template['scale_expose_NUL']),'{}.scale'.format(jnt))
        spin_jnt.append(jnt)
    
    # Parent cluster
    spin_cv_list = cmds.ls('{}.cv[*]'.format(template['spin_CRV']), fl=1)
    spin_upv_cv_list = cmds.ls('{}.cv[*]'.format(spin_upv_crv), fl=1)

    for i in range(len(spin_cv_list)):
        spin_cls = cmds.cluster(spin_cv_list[i], n='spin_0{}_CLS'.format(i))[1]
        cmds.setAttr('.visibility'.format(spin_cls), 0)
        spin_upv_cls = cmds.cluster(spin_upv_cv_list[i], n='spin_upv_0{}_CLS'.format(i))[1]
        cmds.setAttr('.visibility'.format(spin_upv_cls), 0)
        
        if i == 0 or i == 1:
            parent_ctrl = template['spine_01_CTRL']
        elif i == 2 or i == 3:
            parent_ctrl = template['spine_02_CTRL']
        elif i == 4 or i == 5:
            parent_ctrl = template['spine_03_CTRL']
            
        if parent_ctrl:
            cmds.parent(spin_cls, parent_ctrl)
            cmds.parent(spin_upv_cls, parent_ctrl)
    
    # Lock ctrl Attr
    ctrl_list = [template['spine_01_CTRL'], template['spine_02_CTRL'], template['spine_03_CTRL'], template['body_CTRL']]   
    for ctrl in ctrl_list:
        Tools.lock_hide_attr(ctrl, tx=0, ty=0, tz=0, rx=0, ry=0, rz=0)

    # Clean up
    cmds.parent(template['body_NUL'], template['cog_CTRL'])
    cmds.parent(template['spine_curve_NUL'], template['DONOTOUCH_NUL'])
    cmds.delete(body_hld, template['spin_ctrl_NUL'])
    
    # Return objects        
    return(spin_jnt)

'''
# Steps
find better name fo _HLD
'''