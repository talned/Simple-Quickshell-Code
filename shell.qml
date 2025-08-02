import Quickshell // for PanelWindow
import QtQuick // for Text

PanelWindow {
  anchors {
    top: true
    left: true
    right: true
  }

  implicitHeight: 45
  color: "black"

  Text {
    x: (parent.width - width) / 2
    y: 3
    text: Time.time
    color: "white"
    font.pointSize: 20
    font.family: "JetBrains Mono ExtraBold"
  }
}
