import QtQuick 2.15

Item {
    id: root
    property color color: "green"
    property color hoverColor: "red"
    property color textColor: "white"
    property color clickColor: "violet"
    property color textHover: "black"
    property alias title: display1   // alias points to child smwhere little stack that we are building
    property alias area: mousearea   // property alias, basically points to another component

    Rectangle{
        height: root.height
        width: root.width
        color: root.color
        clip: true

        Text {
            id: display1
            text: ""
            anchors.centerIn: parent
            color: root.textColor
            font.bold: true
        }
        MouseArea{
            id: mousearea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                parent.color = root.hoverColor
                display1.color = root.textHover
            }
            onExited: {
                parent.color = root.color
                display1.color = root.textColor
            }
            onPressed: parent.color = root.clickColor
            onReleased: parent.color = root.hoverColor
        }
    }
}
