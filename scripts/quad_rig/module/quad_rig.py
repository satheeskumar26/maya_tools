import maya.cmds as cmds
import maya.OpenMaya as OpenMaya
import maya.mel as mel
import imp

import quad_rig.Tools as Tools
imp.reload(Tools)

import quad_rig.module.quad_front_leg as quad_front_leg
imp.reload(quad_front_leg)

import quad_rig.module.quad_back_leg as quad_back_leg
imp.reload(quad_back_leg) 

import quad_rig.module.quad_spine as quad_spine
imp.reload(quad_spine) 

import quad_rig.module.quad_neck as quad_neck
imp.reload(quad_neck) 

import quad_rig.module.quad_tail as quad_tail
imp.reload(quad_tail) 

def quad_rig():
    """
    Rig a quad using the selected template_CTRL.
    """
    sel = cmds.ls(sl=1, l=1)
    
    # Check if anything is selected
    if not sel:
        OpenMaya.MGlobal.displayError('Nothing Is Selected')
        return
        
    # Check if selected object is a template_CTRL    
    elif not cmds.objExists('{}.template_type'.format(sel[0])):
        OpenMaya.MGlobal.displayError('Selected A template_CTRL')
        return   
         
    # Check if selected object is a quad template    
    elif not cmds.getAttr('{}.template_type'.format(sel[0])) == 'quad_template':
        OpenMaya.MGlobal.displayError('Selected A Quad template')
        return
        
    # Get rig scale    
    template = Tools.template_objs(sel[0])
    rig_scale = cmds.getAttr('{}.template_Scale'.format(sel[0]))
    
    # placeHolders
    Tools.set_placeHolder(sel[0])
    cmds.parent(template['placeHolder_NUL'], w=1)
    
    # Setup COG
    cmds.setAttr('{}.visibility'.format(template['root_NUL']), 1)
    cmds.parent(template['root_NUL'], w=1)
    cmds.makeIdentity(template['root_NUL'], apply=1, t=1, r=1, s=1)
    cmds.scaleConstraint(template['cog_CTRL'], template['scale_expose_NUL'], mo=0)
    
    # Delete all constraint
    all_con = cmds.listRelatives(template['template_CTRL'], f=1, ad=1, type='constraint')
    cmds.delete(all_con)
    
    # Spine setup
    create_spine = quad_spine.spine(template, rig_scale, number_of_jnt=6)
    
    # neck setup
    create_neck = quad_neck.neck(template, rig_scale)
    cmds.parent(template['neck_NUL'], template['spine_01_CTRL'])
    cmds.parent(template['head_NUL'], template['cog_CTRL'])
    
    # Tail setup
    create_tail = quad_tail.tail(template, rig_scale)
    cmds.parent(template['tail_01_NUL'], template['spine_03_CTRL'])

    # Legs setup
    front_jnt = create_spine[0]
    back_jnt = create_spine[-1]
    sides = ['_L', '_R']
    
    for side in sides:
        # Front leg setup
        create_front_leg = quad_front_leg.front_leg(template,rig_scale, side)
        cmds.parent(create_front_leg[0], front_jnt)
        
        # Back leg setup
        create_back_leg = quad_back_leg.back_leg(template,rig_scale, side)
        cmds.parent(create_back_leg[0], back_jnt)
    
    # Clean up
    template_nul = cmds.listRelatives(template['template_CTRL'], p=1)
    #Tools.obj_vis(template['root_NUL'], suffix_list = ['_CRV', '_LOC', '_JNT', '_IK', '_CLS'])
    cmds.parent(template['placeHolder_NUL'], template['DONOTOUCH_NUL'])
    cmds.delete(template_nul)
    
    # To refresh the viewport
    cmds.ogs(reset=True)
    
    # Return
    if cmds.objExists(template['placeHolder_NUL']):
        return(template['placeHolder_NUL'])
        

 
















