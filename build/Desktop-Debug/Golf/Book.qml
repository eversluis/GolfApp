import QtQuick

Rectangle {
    id: book
    color: Theme.backgroundColor

    Image {
        source: "images/book.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }
}

