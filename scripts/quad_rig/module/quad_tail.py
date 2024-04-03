import maya.cmds as cmds
import maya.OpenMaya as OpenMaya

import quad_rig.Tools as Tools
import imp
imp.reload(Tools)


def tail(template, rig_scale):

    # Check if tail exist
    if not cmds.objExists(template['tail_start_HLD']): # Check if jnt exist
        print('No Tail Created !!!')
        return
        
    cmds.parent(template['tail_01_NUL'], w=1)
    cmds.makeIdentity(template['tail_01_NUL'], apply=1, t=1, r=1, s=1)
        
    # Create positions list
    tail_3Jnt = [template['tail_start_HLD'], template['tail_3Jnt_01_HLD'], 
                 template['tail_end_HLD']]
                      
    tail_5Jnt = [template['tail_start_HLD'], template['tail_5Jnt_01_HLD'], 
                 template['tail_5Jnt_02_HLD'], template['tail_5Jnt_03_HLD'],
                 template['tail_end_HLD']]
                      
    tail_7Jnt = [template['tail_start_HLD'], template['tail_7Jnt_01_HLD'], 
                 template['tail_7Jnt_02_HLD'], template['tail_7Jnt_03_HLD'],
                 template['tail_7Jnt_04_HLD'], template['tail_7Jnt_05_HLD'],
                 template['tail_end_HLD']]
    
    # Create ctrl_nuls list
    ctrl_nuls = [template['tail_01_NUL'], template['tail_02_NUL'], 
                 template['tail_03_NUL'], template['tail_04_NUL'],
                 template['tail_05_NUL'], template['tail_06_NUL'],
                 template['tail_07_NUL']]
    # Create ctrls list             
    ctrls = [template['tail_01_CTRL'], template['tail_02_CTRL'], 
                 template['tail_03_CTRL'], template['tail_04_CTRL'],
                 template['tail_05_CTRL'], template['tail_06_CTRL'],
                 template['tail_07_CTRL']]
        
    attr_value = cmds.getAttr('{}.Num_Of_Jnt'.format(template['tail_start_HLD']))
    
    if attr_value == 0:
        num_of_jnt = 3
        ctrl_positions = tail_3Jnt
        cmds.delete(template['tail_04_NUL'])
    elif attr_value == 1:
        num_of_jnt = 5
        ctrl_positions = tail_5Jnt
        cmds.delete(template['tail_06_NUL'])
    elif attr_value == 2:
        num_of_jnt = 7
        ctrl_positions = tail_7Jnt
        
    for position, i in zip(ctrl_positions, range(num_of_jnt)): # move ctrl to position  
        parent_con = cmds.parentConstraint(position, ctrl_nuls[i])
        cmds.delete(parent_con)
        Tools.lock_hide_attr(ctrls[i], tx=0, ty=0, tz=0, rx=0, ry=0, rz=0)
        
    # Clean up
    cmds.delete(template['tail_start_con_NUL'])
 
    # Return objects        
    return(template['tail_01_NUL'])

'''
# Steps
find better name fo _HLD
'''