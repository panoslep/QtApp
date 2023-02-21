import QtQuick
import QtQuick.Controls.Basic
ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "Python App"
    property string currTime: "00:00:00"

        Rectangle {
            anchors.fill: parent

            Image {
                sourceSize.width: parent.width
                sourceSize.height: parent.height
                source: "./images/image1.jpg"
                fillMode: Image.PreserveAspectCrop
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