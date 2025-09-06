import Quickshell // for PanelWindow
import QtQuick // for Text
import Quickshell.Hyprland

ShellRoot {
    PanelWindow {
        anchors {
            top: true
            left: true
            right: true
        }
        implicitHeight: 49
        color: "transparent"
        
        // Panel content
        Row {
            anchors.fill: parent
            anchors.margins: 0
                
            // Left side - workspaces
            Workspaces {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
            }
                        
            // Center - time with border
            Rectangle {
                x: (parent.width - width) / 2
                y: 9
                width: timeText.width + 45
                height: timeText.height + 2

                color: "black"
                border.color: "white"
                border.width: 2
                radius: 6
                
                Text {
                    id: timeText
                    anchors.centerIn: parent
                    text: Time.time
                    color: "white"
                    font.pointSize: 20
                    font.family: "JetBrains Mono ExtraBold"
                }
            }
        }     
    }
}