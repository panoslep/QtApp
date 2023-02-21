import QtQuick 2.15
import QtQuick.Controls.Basic 2.15
ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "Python App"

    Rectangle {
        anchors.fill:

        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/playas.jpg"
            fillMode: Image.PreserveAspectCrop
        }
    }
    Rectangle {
        anchors.fill: parent
        color: "transparent"
        Text {
            text: "16:38:33"
            font.pixelSize: 24
            color: "white"
        }
        // Text {
        //     anchors.centerIn: parent
        //     text: "Some random text"
        //     font.pixelSize: 24
        // }
    }
}