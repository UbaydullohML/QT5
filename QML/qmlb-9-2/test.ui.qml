import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 600
    height: 400

    title: qsTr("Page 4")

    Label {
        color: "#0268ce"
        text: qsTr("You are on Page 4.")
        font.pointSize: 45
        font.bold: true
        anchors.centerIn: parent
    }
}
