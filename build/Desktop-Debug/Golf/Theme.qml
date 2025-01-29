pragma Singleton
import QtQuick

QtObject {
    readonly property int screenWidth: 1024
    readonly property int screenHeight: 600

    readonly property int layoutWidth: 984
    readonly property int layoutHeight: 504

    readonly property int menuHeight5: 472               // 5 items
    readonly property int menuHeight4: 384
    readonly property int menuWidth: 88


    readonly property int margin: 20
    readonly property int cornerRadius: 20
    readonly property int borderWeight: 1

    readonly property color backgroundColor: "#090A0C"
    readonly property color textColor: "#EAEAEB"
    readonly property color warningColor: "#F59600"
    readonly property color brandColor: "#146EF5"
    readonly property color okColor: "#57B74F"
    readonly property color errorColor: "#DC1E37"
    readonly property color background700Color: "#424957"
    readonly property color blackColor: "black"
    readonly property color menuBackgroundColor: "#000000"  // Black
    readonly property color borderColor: background700Color
    
    // Icon colors
    readonly property color iconSelectedColor: brandColor
    readonly property color iconUnselectedColor: "white"
    readonly property real iconSelectedOpacity: 1.0
    readonly property real iconUnselectedOpacity: 0.3
}
