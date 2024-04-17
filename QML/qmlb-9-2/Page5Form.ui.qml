import QtQuick 2.12
import QtQuick.Controls 2.14

Page {
    width: 640
    height: 480

    title: qsTr("Page 5")

    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr("You are on page 5")
        anchors.verticalCenterOffset: -116
        anchors.horizontalCenterOffset: 1
        font.bold: true
        font.pointSize: 40
    }

    Grid {
        id: grid
        width: 248
        height: 100
        anchors.verticalCenterOffset: -13
        anchors.horizontalCenterOffset: -15
        anchors.centerIn: parent
        columns: 2
        spacing: 10

        Label {
            text: "First Name"
        }

        TextField {
            id: txtFirstName
            text: ""
        }

        Label {
            text: "Last Name"
        }

        TextField {
            id: txtLastName
            text: ""
        }
    }

    Button {
        id: button
        x: 273
        y: 283
        width: 74
        height: 40
        text: qsTr("Button")
    }
}
