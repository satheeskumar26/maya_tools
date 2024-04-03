import maya.cmds as cmds

import quad_rig.Tools as Tools
import imp
imp.reload(Tools)


def neck(template, rig_scale):

    # Check if jnt neck
    neck_jnt = template['neck_JNT']   
    if not cmds.objExists(neck_jnt): # Check if jnt exist
        OpenMaya.MGlobal.displayError("'neck_JNT' is missing !!!")
        return

    # Freeze ctrls
    cmds.parent(template['neck_NUL'], w=1)
    cmds.makeIdentity(template['neck_NUL'], apply=1, t=1, r=1, s=1)
    cmds.parent(template['head_NUL'], w=1)
    
   # Create positions list
    ctrl_positions = [template['neck_JNT'], template['head_bottom_JNT']]
    
    # Create ctrl_nuls list
    ctrl_nuls = [template['neck_NUL'], template['head_NUL']]
    
    # Create ctrl_nuls list
    ctrls = [template['neck_CTRL'], template['head_CTRL']]

    # Move ctrl to position using list
    for position, nul, ctrl in zip(ctrl_positions, ctrl_nuls, ctrls): # move ctrl to position  
        parent_con = cmds.parentConstraint(position, nul)
        cmds.delete(parent_con)
        cmds.parent(position, ctrl)
        
    #point and oriante constraint
    cmds.pointConstraint(template['head_JNT'], template['head_NUL'], mo=1)
    orient_con = cmds.orientConstraint(template['head_JNT'], template['head_NUL'], mo=1)[0]
    cmds.connectAttr('{}.Head_Follow'.format(template['neck_CTRL']), '{}.head_JNTW0'.format(orient_con))

    # Lock ctrl Attr
    for ctrl in ctrls:
        Tools.lock_hide_attr(ctrl, tx=0, ty=0, tz=0, rx=0, ry=0, rz=0) 
        
    # Clean up
    cmds.delete(template['head_bottom_con_NUL'], template['neck_ctrl_NUL'])

    # Return objects        
    return(neck_jnt)

'''
# Steps
create jnts
create ctrl list 
snape ctrl
'''