import QtQuick
import QtQuick.Controls

Rectangle {
    id: settings
    color: Theme.backgroundColor

    ComboBox {
        id: settingsCombo
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: Theme.margin
        width: 200
        model: ["Setting 1", "Setting 2"]
        
        background: Rectangle {
            color: Theme.background700Color
            radius: Theme.cornerRadius / 2
        }
        
        contentItem: Text {
            text: settingsCombo.displayText
            color: Theme.textColor
            verticalAlignment: Text.AlignVCenter
            leftPadding: Theme.margin
        }
        
        delegate: ItemDelegate {
            width: settingsCombo.width
            contentItem: Text {
                text: modelData
                color: Theme.textColor
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: highlighted ? Theme.brandColor : Theme.background700Color
            }
        }
    }
}
