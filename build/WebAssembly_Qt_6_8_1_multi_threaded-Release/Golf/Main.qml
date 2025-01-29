import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: window
    width: Theme.screenWidth
    height: Theme.screenHeight
    visible: true
    // title: qsTr("Hello World")
    property bool error: false

    Rectangle {
        id: background
        anchors.fill: parent
        color: "black"
    }

    Rectangle {
        id: backgroundgradient
        anchors.fill: background
        color: "black" //Theme.backgroundColor
        opacity: 0.8
        gradient: Gradient {
            GradientStop { position: 0.0; color: window.error ? Theme.warningColor : "black" }
            GradientStop { position: 0.5; color: "black" }
            GradientStop { position: 1.0; color: "black" }
        }
    }

    Rectangle {
        id: menubarbackground
        width: Theme.menuWidth
        height: window.error ? Theme.menuHeight5 : Theme.menuHeight4
        anchors.verticalCenter: layoutbackground.verticalCenter
        anchors.left: layoutbackground.left
        anchors.leftMargin: Theme.margin
        radius: Theme.cornerRadius
        border.color: Theme.textColor
        border.width: Theme.borderWeight
        border.pixelAligned : false
        color: Theme.menuBackgroundColor
        visible: true
        z: 1
    }

    Rectangle {
        id: layoutbackground
        width: Theme.layoutWidth
        height: Theme.layoutHeight
        anchors.top: background.top
        anchors.left: background.left
        anchors.topMargin: Theme.margin
        anchors.leftMargin: Theme.margin
        radius: Theme.cornerRadius
        color: Theme.backgroundColor
        // opacity: 0.8
    }

    TabBar {
        z: 2
        id: menubar
        width: menubarbackground.width
        height: menubarbackground.height - 32
        anchors.top: menubarbackground.top
        anchors.left: menubarbackground.left
        anchors.topMargin: 16
        currentIndex: 0

        spacing: 0
        background: Rectangle {
            id: menubackground
            color: Theme.backgroundColor
            opacity: 0
        }

        contentItem: ListView {
            model: menubar.contentModel
            currentIndex: menubar.currentIndex
            spacing: menubar.spacing
            anchors.topMargin: 16

            orientation: ListView.Vertical
            boundsBehavior: Flickable.StopAtBounds
            flickableDirection: Flickable.AutoFlickIfNeeded
            snapMode: ListView.SnapToItem
            interactive: false
            highlightMoveDuration: 150
            highlightRangeMode: ListView.ApplyRange
            highlight: Item {
                id: highlight
                Rectangle {
                    width: 6
                    height: 36
                    radius: 3
                    anchors.verticalCenter: parent.verticalCenter
                    x: 10
                    color: menubar.currentIndex != 4 ? Theme.textColor : Theme.warningColor
                }
            }
        }

        MenuButton {
            id: bookButton
            width: menubar.width
            height: Theme.menuWidth
            anchors.top: parent.top
            imageSource: "images/book.svg"
        }

        MenuButton {
            id: holeButton
            width: menubar.width
            height: Theme.menuWidth
            anchors.top: bookButton.bottom
            imageSource: "images/flag.svg"
        }

        MenuButton {
            id: greenButton
            width: menubar.width
            height: Theme.menuWidth
            anchors.top: holeButton.bottom
            imageSource: "images/green.svg"
        }

        MenuButton {
            id: errorButton // TODO: rename
            width: menubar.width
            height: window.error ? Theme.menuWidth : 0
            anchors.top: greenButton.bottom
            visible: window.error
            enabled: window.error
            imageSource: "images/flag.svg"
        }
    }

    StackLayout {
        id: layout
        anchors.left: menubarbackground.right
        anchors.right: layoutbackground.right
        anchors.top: layoutbackground.top
        anchors.bottom: layoutbackground.bottom
        anchors.margins: Theme.margin
        currentIndex: menubar.currentIndex

        Book {}
        Hole {}
        Green {}
        Settings {}
    }
}
