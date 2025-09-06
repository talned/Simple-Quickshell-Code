// Workspaces.qml
import QtQuick
import Quickshell
import Quickshell.Hyprland

Item {
    id: workspacesWidget
    
    // Automatic Sizing
    implicitWidth: workspacesRow.implicitWidth
    implicitHeight: workspacesRow.implicitHeight
    
    Row {
        id: workspacesRow
        anchors.centerIn: parent
        spacing: 8
        
        Repeater {
            model: Hyprland.workspaces  // Fixed: Capital H in Hyprland
            
            Rectangle {
                // Only show regular workspaces (positive IDs)
                visible: modelData.id > 0
                id: workspaceButton
                width: 45
                height: 38
                radius: 0
                
                // Black background for all workspaces
                color: "black"
                
                // White border for focused workspace
                border.color: modelData.focused ? "white" : "transparent"
                border.width: modelData.focused ? 1 : 0
                
                // Workspace number display
                Text {
                    anchors.centerIn: parent
                    text: modelData.id
                    color: "white"
                    font.pointSize: 20
                    font.bold: modelData.focused
                    font.family: "JetBrains Mono ExtraBold"
                }
                
                // Add click functionality
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        modelData.activate()
                    }
                }
            }
        }
    }
}