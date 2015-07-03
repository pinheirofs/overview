import QtQuick 2.0

Item {
    id: root

    width: 200
    height: 200

    Rectangle {
        id: base

        color: "#828282"

        radius: 100
        anchors.fill: parent
    }

    Rectangle {
        id: stick

        color: "#000000"

        width: 50
        height: 50

        radius: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
