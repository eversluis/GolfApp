import QtQuick
import QtQuick.Controls

Rectangle {
    id: gauge
    color: Theme.backgroundColor
    // implicitWidth: 300
    // implicitHeight: 300
    // anchors.fill: parent

    Image {
        x: 192 - 148
        width: 640
        height: 600
        fillMode: Image.Pad
        source: "images/gauge_scale.svg"
    }


}

