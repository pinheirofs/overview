import QtQuick 2.4

Item {
    id: root

    width: 410
    height: 200

    focus: true
    Keys.onPressed: {
        if (event.key === Qt.Key_W) {
            console.log("left joystick move up");
            event.accepted = true;
        } else if (event.key === Qt.Key_Z) {
            console.log("left joystick move up");
            event.accepted = true;
        } else if (event.key === Qt.Key_A) {
            console.log("left joystick move left");
            event.accepted = true;
        } else if (event.key === Qt.Key_S) {
            console.log("left joystick move right");
            event.accepted = true;
        } else if (event.key === Qt.Key_I) {
            console.log("right joystick move up");
            event.accepted = true;
        } else if (event.key === Qt.Key_J) {
            console.log("right joystick move up");
            event.accepted = true;
        } else if (event.key === Qt.Key_K) {
            console.log("right joystick move left");
            event.accepted = true;
        } else if (event.key === Qt.Key_M) {
            console.log("right joystick move right");
            event.accepted = true;
        }
    }

    Rectangle {
        id: rectangle

        color: "#363636"

        anchors.fill: parent

        Row {
            id: layout
            spacing: 10

            anchors.fill: parent

            Repeater {
                model: 2
                delegate: Joystick {
                    id: joystick
                }
            }
        }
    }
}

