import QtQuick 2.12
import BlueRovUI 1.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0

//import QtStudio3D 2.3
//import Qt.SafeRenderer 1.1
Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: qsTr("Hello BlueRovUI")
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Rectangle {
        id: rectangle
        color: "#eeeded"
        radius: 1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        Label {
            id: mFeedBack
            x: 964
            y: 124
            width: 194
            height: 22
            text: qsTr("Motor Feedback")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            renderType: Text.QtRendering
        }

        PushButton {
            id: allStop
            x: 867
            y: 58
            width: 140
            height: 40
            text: "ALLSTOP"
            font.family: "Arial"
            font.pixelSize: 17
            spacing: 0
        }

        PushButton {
            id: startMission
            x: 1024
            y: 58
            width: 167
            height: 40
            text: "Start Mission"
            font.pointSize: 17
        }

        Rectangle {
            id: rectangle4
            x: 819
            y: 275
            width: 139
            height: 184
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Switch {
                id: ledSwitch
                x: 8
                y: 8
                width: 123
                height: 30
                text: qsTr("LEDs")
                font.pointSize: 13
            }

            Switch {
                id: laserSwitch
                x: 8
                y: 43
                width: 110
                height: 30
                text: qsTr("Laser")
                font.pointSize: 13
            }

            Switch {
                id: sss_switch
                x: 8
                y: 78
                width: 110
                height: 30
                text: qsTr("SSS")
                font.pointSize: 13
            }

            Switch {
                id: cameraSwitch
                x: 8
                y: 113
                width: 131
                height: 30
                text: qsTr("Cameras")
                font.pointSize: 13
            }

            Switch {
                id: altimeterSwitch
                x: 8
                y: 148
                width: 131
                height: 30
                text: qsTr("Altimieter")
                font.pointSize: 13
            }

            Label {
                id: switchLabel
                x: 48
                y: -22
                width: 42
                height: 16
                text: qsTr("On/Off")
            }
        }

        Rectangle {
            id: rectangle1
            x: 964
            y: 357
            width: 227
            height: 50
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Label {
                id: current
                x: 0
                y: 0
                width: 227
                height: 50
                text: qsTr("0.0")
                padding: 10
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
                font.pointSize: 32
                font.bold: true
                font.family: "Courier"
                rightPadding: 10
                leftPadding: 0
                bottomPadding: 0
                topPadding: 0
            }
        }

        Label {
            id: currentLabel
            x: 1041
            y: 338
            width: 80
            height: 19
            text: qsTr("Current")
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: rectangle2
            x: 964
            y: 440
            width: 227
            height: 50
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Label {
                id: voltage
                x: 8
                y: 0
                width: 219
                height: 50
                text: qsTr("0.0")
                bottomPadding: 0
                font.pointSize: 32
                topPadding: 0
                rightPadding: 10
                font.family: "Courier"
                horizontalAlignment: Text.AlignRight
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                leftPadding: 0
            }
        }

        Label {
            id: label1
            x: 1041
            y: 421
            width: 80
            height: 20
            text: qsTr("Voltage")
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: rectangle3
            x: 867
            y: 153
            width: 90
            height: 42
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Label {
                id: multplier
                x: 0
                y: 0
                width: 90
                height: 34
                text: qsTr("1")
                horizontalAlignment: Text.AlignHCenter
                padding: 5
                topPadding: 5
                font.pixelSize: 29
            }
        }

        PushButton {
            id: getParamsButton
            x: 1008
            y: 211
            width: 140
            height: 30
            text: "Get Params"
        }

        Rectangle {
            id: rollViewer
            x: 23
            y: 35
            width: 194
            height: 160
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Image {
                id: image2
                x: 47
                y: 8
                width: 100
                height: 100
                fillMode: Image.PreserveAspectFit
                source: "images/300ppi/roll.png"
            }

            Label {
                id: label4
                x: 59
                y: 122
                text: qsTr("Roll:")
            }

            Label {
                id: label5
                x: 90
                y: 114
                width: 48
                height: 24
                text: qsTr("0")
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: pitchViewer
            x: 23
            y: 225
            width: 194
            height: 147
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Image {
                id: image
                x: 41
                y: 8
                width: 110
                height: 110
                fillMode: Image.PreserveAspectFit
                source: "images/300ppi/pitch.png"
            }

            Label {
                id: label9
                x: 85
                y: 100
                width: 48
                height: 24
                text: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
            }

            Label {
                id: label8
                x: 54
                y: 108
                text: qsTr("Pitch:")
            }
        }

        Rectangle {
            id: yawViewer
            x: 245
            y: 35
            width: 194
            height: 160
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2
            rotation: 0

            Label {
                id: label7
                x: 96
                y: 120
                width: 48
                height: 24
                text: qsTr("0")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
            }

            Label {
                id: label6
                x: 62
                y: 128
                text: qsTr("Yaw:")
            }

            Image {
                id: image1
                x: 52
                y: 24
                width: 90
                height: 90
                rotation: 180
                fillMode: Image.PreserveAspectFit
                source: "images/300ppi/yaw.png"
            }
        }

        Label {
            id: label
            x: 887
            y: 131
            width: 59
            height: 16
            text: qsTr("Multiplier")
        }

        Rectangle {
            id: rectangle5
            x: 964
            y: 153
            width: 227
            height: 42
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Label {
                id: label10
                x: 8
                y: 8
                width: 211
                height: 26
                text: qsTr("0.0")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            id: rectangle6
            x: 964
            y: 275
            width: 227
            height: 46
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            PushButton {
                id: speedControlButton
                x: 8
                y: 8
                width: 61
                height: 30
                text: "On"
            }

            SpinBox {
                id: speedControlSpinBox
                x: 93
                y: 8
                width: 114
                height: 30
                editable: true
                stepSize: 1
                wheelEnabled: false
            }
        }

        Label {
            id: label2
            x: 1024
            y: 253
            text: qsTr("Speed Control")
        }

        Rectangle {
            id: rectangle7
            x: 23
            y: 398
            width: 194
            height: 200
            color: "#00000000"
            radius: 6
            border.color: "#a2a2a2"
            border.width: 2

            Image {
                id: image3
                x: 65
                y: 32
                width: 59
                height: 40
                fillMode: Image.PreserveAspectFit
                source: "images/300ppi/depth.png"
            }

            Text {
                id: element
                x: 53
                y: 8
                width: 56
                height: 15
                text: qsTr("Depth:")
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            ProgressBar {
                id: progressBar
                x: 52
                y: 105
                width: 140
                to: 90
                rotation: -90
                value: 80.5
            }

            Label {
                id: label3
                x: 119
                y: 8
                text: qsTr("1.0")
                font.pointSize: 12
            }
        }

        Text {
            id: element1
            x: 245
            y: 226
            width: 194
            height: 146
            text: qsTr("/***The plan for these is to rotate them based on the values we obtain for roll pitch and yaw.***/")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 12
        }

        Text {
            id: element2
            x: 254
            y: 440
            width: 103
            height: 50
            text: qsTr("/**Yet to add a graduated scale for  the depth**/")
            wrapMode: Text.WordWrap
            font.pixelSize: 12
        }
    }
}
