import maya.cmds as cmds
import maya.OpenMaya as OpenMaya
import os

class Dag_info(OpenMaya.MDagPath):
    """
    A class for retrieving information about a Maya object's DAG path.
    """

    def __init__(self, obj_name):
        super(Dag_info, self).__init__()

        sel = OpenMaya.MSelectionList()
        sel.add(obj_name)

        sel.getDagPath(0, self)
        
    def __str__(self):
        """
        Return the name of the object.
        """
        return self.name()

    def name(self):
        """
        Return the name of the object.
        """
        return self.partialPathName() if self.isValid() else "Invalid Object"
                


def template_objs(sel_name):
    """
    Retrieve objects under the specified selection and return them in a dictionary.
    
    Args:
        sel_name (str): The name of the selection.
        
    Returns:
        dict: A dictionary mapping object names to Dag_info instances.
    """
    # From sel_name select its root
    sel_root_name = cmds.listRelatives(sel_name, f=1, ap=1)[0].split('|')[1]
    my_dict = {sel_root_name.split("|")[-1] : Dag_info(sel_root_name)} # Add itself to the my_dict before adding its child.
    
    for obj in cmds.listRelatives(sel_root_name, ad=True, f=True, type="transform") or []:
        obj_name = obj.split("|")[-1]
        obj_dag_info = Dag_info(obj)
        
        my_dict[obj_name] = obj_dag_info

    return(my_dict)
    
def lock_hide_attr(obj_name, lock_attr=1, lock=1, hide_attr=1, channel_box=0, keyable=0, tx=1, ty=1, tz=1, rx=1, ry=1, rz=1, sx=1, sy=1, sz=1):
    """
    Locks or unlocks individual attributes and hides them from the channel box if needed.

    Args:
        obj_name (str): The name of the object whose attributes are to be locked or unlocked.
        lock (bool): Flag indicating whether to lock (True) or unlock (False) the attributes.
        channelBox (bool): Flag indicating whether the attribute should be visible in the channel box.
        keyable (bool): Flag indicating whether the attribute should be keyable in the channel box.
    """
    attributes = {'tx': tx, 'ty': ty, 'tz': tz, 'rx': rx, 'ry': ry, 'rz': rz, 'sx': sx, 'sy': sy, 'sz': sz}
       
    for attr in attributes:                
        if attributes[attr]:
            
            if lock_attr:
                cmds.setAttr('{}.{}'.format(obj_name,attr), l=lock)
                
            if hide_attr:
                cmds.setAttr('{}.{}'.format(obj_name,attr), cb=channel_box, k=keyable)

    
    
def motion_path(obj_name=None, crv=None, name=None, parametic_len=1, follow=True, follow_axis=2, up_axis=1, world_up_type=None, world_up_vector=None, world_up_object=None, inverse_up=False, inverse_front=False, bank=False, start_time_u=None):
    """
    Create a motion path for an object along a given curve.
    """
    motion_path_utl = cmds.createNode('motionPath', n='{}_UTL'.format(name))
    
    cmds.setAttr('{}.fractionMode'.format(motion_path_utl), abs(parametic_len-1))  
    cmds.setAttr('{}.follow'.format(motion_path_utl), follow)
    cmds.setAttr('{}.frontAxis'.format(motion_path_utl), follow_axis)
    cmds.setAttr('{}.upAxis'.format(motion_path_utl), up_axis)
    cmds.setAttr('{}.worldUpType'.format(motion_path_utl), world_up_type)
    cmds.setAttr('{}.worldUpVectorX'.format(motion_path_utl), world_up_vector[0])
    cmds.setAttr('{}.worldUpVectorY'.format(motion_path_utl), world_up_vector[1])
    cmds.setAttr('{}.worldUpVectorZ'.format(motion_path_utl), world_up_vector[2])
    cmds.setAttr('{}.inverseUp'.format(motion_path_utl), inverse_up)
    cmds.setAttr('{}.inverseFront'.format(motion_path_utl), inverse_front)
    cmds.setAttr('{}.bank'.format(motion_path_utl), bank)
    cmds.setAttr('{}.uValue'.format(motion_path_utl), start_time_u)
    
    if world_up_object:
        cmds.connectAttr('{}.worldMatrix[0]'.format(world_up_object), '{}.worldUpMatrix'.format(motion_path_utl))

    cmds.connectAttr('{}.worldSpace[0]'.format(crv), '{}.geometryPath'.format(motion_path_utl))
    
    cmds.connectAttr('{}.rx'.format(motion_path_utl), '{}.rx'.format(obj_name))
    cmds.connectAttr('{}.ry'.format(motion_path_utl), '{}.ry'.format(obj_name))
    cmds.connectAttr('{}.rz'.format(motion_path_utl), '{}.rz'.format(obj_name))

    cmds.connectAttr('{}.xCoordinate'.format(motion_path_utl), '{}.tx'.format(obj_name))
    cmds.connectAttr('{}.yCoordinate'.format(motion_path_utl), '{}.ty'.format(obj_name))
    cmds.connectAttr('{}.zCoordinate'.format(motion_path_utl), '{}.tz'.format(obj_name))

    cmds.connectAttr('{}.message'.format(motion_path_utl), '{}.specifiedManipLocation'.format(obj_name))
    
    return motion_path_utl

    
def scale_ctrl(ctrl_obj, scale_value, world_space=True):
    """
    Scale a control object using a cluster deformer.
    """
    cls = cmds.cluster(ctrl_obj)[1]
    if world_space:
        cmds.xform(cls, ws=1, rp=[0,0,0])
        cmds.xform(cls, ws=1, sp=[0,0,0])
    cmds.setAttr('{}.scale'.format(cls), scale_value, scale_value, scale_value)
    cmds.delete(ctrl_obj, ch=1)
    

def import_file(file_path):
    """
    Import a Maya scene file into the current scene.
    """
    if not os.path.exists(file_path):
        OpenMaya.MGlobal.displayError('{} File path dont exist'.format(file_path))
        
    file_namespace = 'Namespace'  
    file_action = cmds.file(file_path, i=1, namespace=file_namespace, type="mayaAscii", ignoreVersion=True)
    if cmds.objExists('Namespace:template_CTRL'):
        cmds.select('Namespace:template_CTRL')
    namespace_action = cmds.namespace(removeNamespace=file_namespace, mergeNamespaceWithRoot=1, force=1)
 
            
def obj_vis(sel, suffix_list):
    """
    Hides or unhides individual objects ending with the specified suffix.

    Args:
        suffix_list (list): A list of suffixes to match the end of name.
            Possible values: '_IK', '_CLS', '_CRV', '_JNT'
    """
    # Get descendants
    sel_root = cmds.listRelatives(sel, f=1, ap=1)[0].split('|')[1]
    all_descendants = cmds.listRelatives(sel_root, ad=1)
    
    # Iterate over each suffix in the list
    for suffix in suffix_list:
        for child in all_descendants:
            # if suffix in
            if child.endswith(suffix):
                # Set value for jnt
                if suffix == '_JNT':
                    attr = 'drawStyle'
                    on=0
                    off=2
                else:
                    attr = 'visibility'
                    on=1
                    off=0
                try:
                    # if on then off, if off then on.
                    if cmds.getAttr("{}.{}".format(child,attr)) == on:
                        cmds.setAttr("{}.{}".format(child,attr), off)
                    else:
                        cmds.setAttr("{}.{}".format(child,attr), on)
                    
                except RuntimeError as e:
                    print("{} {} vis attr was locked".format(e, child))


def place_holder(sel, suffix_list):
    """
    Create locators for objects in the scene that end with the specified suffixes.

    Args:
        sel: selection name
        suffix_list (list): A list of suffixes to match the end of object names.
    """

    
    # Get selected trans
    all_objects = cmds.listRelatives(sel,ad=1, type='transform')
    
    # Create a Grp
    for obj in all_objects:
        if 'DONOTOUCH_NUL' in obj:
            placeholder_nul = cmds.group(empty=1, name='placeHolder_NUL')
            cmds.parent(placeholder_nul, obj)
            cmds.setAttr('{}.visibility'.format(placeholder_nul), 0)
    
    # Iterate over each suffix in the list
    for suffix in suffix_list:
                
        # Filter objects based on the specified suffix
        objects_to_locate = []
        for obj in all_objects:
            if obj.endswith(suffix):
                objects_to_locate.append(obj)
        
        # Create a locator for each object
        for obj in objects_to_locate:
            # Get the translation 
            translation = cmds.xform(obj, query=1, translation=1, worldSpace=1)
            # Create TMP loc
            locator_name = obj + '_TMP'
            locator = cmds.spaceLocator(name=locator_name)[0]
            # Match trans
            cmds.xform(locator, translation=translation, worldSpace=True)
            # Parent to placeholder
            cmds.parent(locator, placeholder_nul)


def set_placeHolder(sel):
    # Get all the above dag objects and its unic name.
    template = template_objs(sel)
    loc_chains = cmds.listRelatives(template['placeHolder_NUL'], c=1, type='transform', f=1)
    
    for chain in loc_chains:
        loc_list = cmds.listRelatives(chain, ad=1, type='transform', f=1)
        loc_list.append(chain)
        for loc in loc_list[::-1]:
            template_ctrl = loc.split('|')[-1].split('_PH')[0]
            parent_constraint = cmds.parentConstraint(template[template_ctrl], loc)
            cmds.delete(parent_constraint)


def set_template(sel):
    # Get all the above dag objects and its unic name.
    template = template_objs(sel)
    loc_chains = cmds.listRelatives(template['placeHolder_NUL'], c=1, type='transform', f=1)
    
    for chain in loc_chains:
        loc_list = cmds.listRelatives(chain, ad=1, type='transform', f=1)
        loc_list.append(chain)
        for loc in loc_list[::-1]:
            template_ctrl = loc.split('|')[-1].split('_PH')[0]
            locked_trs_attr = []
            locked_rot_attr = []
            
            locked_attr = cmds.listAttr(template[template_ctrl], l=1) or []
            
            for attr in locked_attr:
                if attr.startswith('translate'):
                    axis = attr.split('translate')[1].lower()
                    locked_trs_attr.append(axis)
                elif attr.startswith('rotate'):
                    axis = attr.split('rotate')[1].lower()
                    locked_rot_attr.append(axis)
            print(loc, '-----', template[template_ctrl], '-----', tuple(locked_trs_attr), tuple(locked_rot_attr))
            parent_constraint = cmds.parentConstraint(loc, template[template_ctrl], skipTranslate=tuple(locked_trs_attr), skipRotate=tuple(locked_rot_attr))
            cmds.delete(parent_constraint)
            













