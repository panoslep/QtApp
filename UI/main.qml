import QtQuick
import QtQuick.Controls.Basic
ApplicationWindow {
    visible: true
    width: 600
    height: 500
    // height: 600
    // x: screen.desktopAvailableWidth - width - 12
    // y: screen.desktopAvailableHeight - height - 48
    title: "Kids Watch"
    // flags: Qt.FramelessWindowHint | Qt.Window

    property string currTime: "00:00:00"
        property QtObject backend

        Rectangle {
            anchors.fill: parent

            Image {
                sourceSize.width: parent.width
                sourceSize.height: parent.height
                source: "./images/image1.jpg"
                fillMode: Image.PreserveAspectCrop
            }
        }

        Connections {
            target: backend

            function onUpdated(msg)
            {
                currTime = msg;
            }
        }

        Rectangle {
            anchors.fill: parent
            color: "transparent"
            Text {
                anchors{
                    bottom: parent.bottom
                    bottomMargin: 12
                    left: parent.left
                    leftMargin: 12
                }
                text: currTime
                font.pixelSize: 24
                color: "white"
            }

        }
    }