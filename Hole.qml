import QtQuick

Rectangle {
    id: hole
    color: Theme.backgroundColor

    Text {
        id: holeTitle
        text: "Hole 1"
        font.pixelSize: 24
        color: Theme.textColor
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: Theme.margin
    }

    Image {
        source: "images/Hole1.jpg"
        anchors.fill: parent
        anchors.topMargin: holeTitle.height + Theme.margin * 2
        fillMode: Image.PreserveAspectFit
    }
}
