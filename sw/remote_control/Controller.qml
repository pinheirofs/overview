import QtQuick 2.4

Item {
    id: root

    width: 410
    height: 200

    focus: true
    Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_W:
            leftJoystickController.moveUp();
            console.log("left joystick move up");
            event.accepted = true;
            break;
        case  Qt.Key_Z:
            leftJoystickController.moveDown();
            console.log("left joystick move down");
            event.accepted = true;
            break;
        case Qt.Key_A:
            leftJoystickController.moveLeft();
            console.log("left joystick move left");
            event.accepted = true;
            break;
        case Qt.Key_S:
            leftJoystickController.moveRight();
            console.log("left joystick move right");
            event.accepted = true;
            break;
        case Qt.Key_I:
            rightJoystickController.moveUp();
            console.log("right joystick move up");
            event.accepted = true;
            break;
        case Qt.Key_J:
            rightJoystickController.moveRight();
            console.log("right joystick move right");
            event.accepted = true;
            break;
        case Qt.Key_K:
            rightJoystickController.moveLeft();
            console.log("right joystick move left");
            event.accepted = true;
            break;
        case Qt.Key_M:
            rightJoystickController.moveDown();
            console.log("right joystick move down");
            event.accepted = true;
            break;
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

