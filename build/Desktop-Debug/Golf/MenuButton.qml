import QtQuick
import QtQuick.Controls
import QtQuick.Effects

TabButton {
    id: control
    property string imageSource
    property color iconColor: control.checked ? Theme.iconSelectedColor : Theme.iconUnselectedColor

    contentItem: Item {
        Image {
            id: buttonImage
            source: control.imageSource
            anchors.centerIn: parent
            sourceSize.width: 32
            sourceSize.height: 32
            visible: false
        }

        MultiEffect {
            source: buttonImage
            anchors.fill: buttonImage
            colorization: 1.0
            colorizationColor: control.iconColor
        }
    }

    background: Rectangle {
        color: "transparent"
    }
}
