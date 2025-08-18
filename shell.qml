import Quickshell // for PanelWindow
import QtQuick // for Text
import Quickshell.Hyprland

PanelWindow {
    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 46
    color: "black"

    Text {
        x: (parent.width - width) / 2
        y: 3
        text: Time.time
        color: "white"
        font.pointSize: 20
        font.family: "JetBrains Mono ExtraBold"
    }
    // Row {
    //     spacing: 8
    //     x: 350
    //     y: 3
    //     Repeater {
    //         model: Hyprland.workspaces

    //         Rectangle {
    //             width: 100
    //             height: 40
    //             color: "green"
    //             Text {
    //                 x: (parent.width - width) / 2
    //                 y: 2
    //                 text: modelData.id
    //                 color: "white"
    //                 font.pointSize: 20
    //             }
    //         }
    //     }
    // }

}
