import maya.cmds as cmds
import maya.OpenMaya as OpenMaya
from PySide2 import QtWidgets, QtCore
import os
import sys
import imp

import quad_rig.Tools as Tools
imp.reload(Tools)

import quad_rig.module.quad_rig as quad_rig
imp.reload(quad_rig)

# Get file path
project_path = os.path.dirname(os.path.abspath(__file__))


class CollapsibleWidget(QtWidgets.QWidget):
    def __init__(self, title="", parent=None):
        super(CollapsibleWidget, self).__init__(parent)
        
        # Create toggle_button
        self.toggle_button = QtWidgets.QToolButton(text=title)
        self.toggle_button.setCheckable(True)
        self.toggle_button.setSizePolicy(QtWidgets.QSizePolicy.Expanding, 
                                         QtWidgets.QSizePolicy.Fixed)
        self.toggle_button.setToolButtonStyle(QtCore.Qt.ToolButtonTextBesideIcon)
        self.toggle_button.setArrowType(QtCore.Qt.RightArrow)
        self.toggle_button.clicked.connect(self.toggle_collapsed)        
        self.toggle_button.setStyleSheet("QToolButton { background-color: gray; }")

        # Create content_area
        self.content_area = QtWidgets.QScrollArea(maximumHeight=0)
        self.content_area.setSizePolicy(QtWidgets.QSizePolicy.Expanding, 
                                         QtWidgets.QSizePolicy.Fixed)
        self.content_area.setFrameShape(QtWidgets.QFrame.NoFrame)
        
        # Create a sub-layout for the content 
        self.content_layout = QtWidgets.QVBoxLayout()
        self.content_layout.addWidget(self.content_area)
        
        # Create main_layout to add toggle_button and content_layout
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setSpacing(0)
        self.main_layout.setContentsMargins(0, 0, 0, 0)
        self.main_layout.addWidget(self.toggle_button)
        self.main_layout.addLayout(self.content_layout)

    # Adds content_into_layout 
    def set_content_into_layout(self, layout):
        self.content_area.setLayout(layout)
        
    # If checked collapsed and expand
    def toggle_collapsed(self, checked):
        if not checked:
            self.content_area.setMaximumHeight(0)
            self.toggle_button.setArrowType(QtCore.Qt.RightArrow)
        else:
            self.content_area.setMaximumHeight(1000)
            self.toggle_button.setArrowType(QtCore.Qt.DownArrow) 

class Quad_rig_window(QtWidgets.QWidget):
    
    def __init__(self):
        super(Quad_rig_window, self).__init__()
        
        self.setWindowTitle('Quad rig')
        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)
        
        self.create_widgets()
        self.connect_widgets()
        self.create_layout()
        
    def create_widgets(self):
        # tab_01
        self.button_01 = QtWidgets.QPushButton('Import')
        self.text_edit_01 = QtWidgets.QTextEdit(
            'Make sure geometry file is '
            'clean before importing ' 
            'template. This action '
            'is irreversible!'
        )
        self.text_edit_01.setReadOnly(True)
        
        # tab_02
        self.button_02 = QtWidgets.QPushButton('Template_To_Rig')
        self.text_edit_02 = QtWidgets.QTextEdit(
            'Instructions :<br>'
            'Spine - Set spine shape using _HLDs, use _LOCs for feather deformation. <br>'
            'Neck - _JNTs are only movable on the visible attrs. <br>'
            'Tail - Tail segments can be adjusted. <br>' 
            'Leg - JNTs are only movable on the visible attrs. <br>' 
            'Foot - Set the back and front tips, by using _LOCs. <br>'
            'Template To Rig - Select "template_CTRL" and run "Template_To_Rig". <br>'
        )
        self.text_edit_02.setReadOnly(True)
                
        # tab_03
        self.button_03 = QtWidgets.QPushButton('Rig_To_Template')
        self.text_edit_03 = QtWidgets.QTextEdit(
            'The Rig_To_Template '
            'functionality enables you '
            'to revert back to the initial '
            'template stage, providing the '
            'opportunity to refine and '
            'adjust joint placement as needed.'
        )
        self.text_edit_03.setReadOnly(True)
        
        # tab_04
        self.button_04 = QtWidgets.QPushButton('Finalize_Rig')
        self.text_edit_04 = QtWidgets.QTextEdit(
            'The Finalize_Rig '
            'functionality removes unnecessary '
            'nodes required for reverting '
            'back to the template.'
            'Please ensure to save a backup '
            'file before finalizing the rig.'
        )
        self.text_edit_04.setReadOnly(True)

    def connect_widgets(self):
        self.button_01.clicked.connect(self.button_01_action)
        self.button_02.clicked.connect(self.button_02_action)
        self.button_03.clicked.connect(self.button_03_action)
        self.button_04.clicked.connect(self.button_04_action)
        
    def button_01_action(self):
        file_name = 'quad_template.v001.ma'        
        full_path = os.path.join(project_path, 'template', file_name)
        
        if not os.path.exists(full_path):
            OpenMaya.MGlobal.displayError('Template file {} not found.'.format(file_name))
            
        Tools.import_file(full_path)
        
    def button_02_action(self):
        quad_rig.quad_rig()
        
    def button_03_action(self):
        print('button_03_action working')
        
        sel = cmds.ls(sl=1)
        # Check if anything is selected
        if not sel:
            OpenMaya.MGlobal.displayError('Nothing Is Selected')
            return
            
        # Check if selected object is a template_CTRL    
        elif not sel[0] == 'master_CTRL':
            OpenMaya.MGlobal.displayError('Selected A master_CTRL')
            return 
            
        template = Tools.template_objs(sel[0])
        old_placeHolder = cmds.parent(template['template_CTRL_PH'],w=1)
        old_placeHolder_scale = cmds.getAttr('{}.scaleX'.format(template['placeHolder_NUL']))
        cmds.delete(template['root_NUL'])
        
        self.button_01_action()
        sel = cmds.ls(sl=1, l=1)
        template = Tools.template_objs(sel[0])

        cmds.delete(template['template_CTRL_PH']) 
        cmds.setAttr('{}.template_Scale'.format(template['template_CTRL']), old_placeHolder_scale)
        cmds.parent(old_placeHolder, template['placeHolder_NUL'])
        
        Tools.set_template(template['placeHolder_NUL'])


    def button_04_action(self):
        print('button_04_action working')
        sel = cmds.ls(sl=1)
        template = Tools.template_objs(sel[0])
        Tools.obj_vis(sel, suffix_list = ['_CRV', '_LOC', '_JNT', '_IK', '_CLS'])
        
        if cmds.objExists(template['placeHolder_NUL']):
            cmds.delete(template['placeHolder_NUL'])
        
    def create_layout(self):
        
        # Create main_layout and QGroupBox
        self.main_layout = QtWidgets.QVBoxLayout(self)        
        self.tool_name_grp_layout = QtWidgets.QGroupBox('Quad Auto Rig Tool')
        
        # Create layout for 01
        self.tabs_layout = QtWidgets.QVBoxLayout()
        
        # Create instance of CollapsibleWidget Class
        collapsible_widget_01 = CollapsibleWidget('Import Template')
        collapsible_widget_02 = CollapsibleWidget('Template To Rig')
        collapsible_widget_03 = CollapsibleWidget('Rig To Template')
        collapsible_widget_04 = CollapsibleWidget('Finalize Rig')
        
        # Create layout to add content like text_edit_01 and button_01
        collapsible_layout_01 = QtWidgets.QVBoxLayout()
        collapsible_layout_01.addWidget(self.text_edit_01)
        collapsible_layout_01.addWidget(self.button_01)
                
        # Create layout to add content like text_edit_02 and button_02
        collapsible_layout_02 = QtWidgets.QVBoxLayout()
        collapsible_layout_02.addWidget(self.text_edit_02)
        collapsible_layout_02.addWidget(self.button_02)
        
        # Create layout to add content like text_edit_03 and button_03
        collapsible_layout_03 = QtWidgets.QVBoxLayout()
        collapsible_layout_03.addWidget(self.text_edit_03)
        collapsible_layout_03.addWidget(self.button_03)
        
        # Create layout to add content like text_edit_04 and button_04
        collapsible_layout_04 = QtWidgets.QVBoxLayout()
        collapsible_layout_04.addWidget(self.text_edit_04)
        collapsible_layout_04.addWidget(self.button_04)
        
        # Set layout to collapsible layout
        collapsible_widget_01.set_content_into_layout(collapsible_layout_01)
        collapsible_widget_02.set_content_into_layout(collapsible_layout_02)
        collapsible_widget_03.set_content_into_layout(collapsible_layout_03)
        collapsible_widget_04.set_content_into_layout(collapsible_layout_04)
        
        # Set final layout
        self.tabs_layout.addWidget(collapsible_widget_01)
        self.tabs_layout.addWidget(collapsible_widget_02)
        self.tabs_layout.addWidget(collapsible_widget_03)
        self.tabs_layout.addWidget(collapsible_widget_04)
        self.tool_name_grp_layout.setLayout(self.tabs_layout)        
        self.main_layout.addWidget(self.tool_name_grp_layout)
        self.setLayout(self.main_layout)
        self.tabs_layout.setAlignment(QtCore.Qt.AlignTop)
        self.resize(500, 0)
        
my_windows = Quad_rig_window()
my_windows.show()

#move the creation of placeHolder_NUL inside
# and update the cmds.delete('placeHolder_NUL') to Templet ['placeHolder_NUL']
