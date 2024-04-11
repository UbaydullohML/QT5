import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("6-drag-drop")

    property string key: "special key here"
    property color goalOn: "red"
    property color goalOff: "green"
    property color ballOn: "yellow"
    property color ballOff: "orange"

    DropArea{
        id: dropzone
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: 300
        Drag.keys: [thekey]
        onDropped: {
            console.log("dropped")
            goal.color = goalOn
        }
        Rectangle{
            id: goal
            anchors.fill: parent
            color: goalOff
            border.color: "black"
            border.width: 5
        }
    }
    Rectangle{
        id: ball
        width: 90
        height: 90
        radius: width
        x: 25
        y: (parent.height/2) - (height/2)
        color: ballOff
        border.width: 5

        Drag.active: dragArea.drag.active  // dragarea is active
        Drag.keys: [thekey]  // if key mathces, it changes to goalOn color

        Text {
            id: title
            anchors.centerIn: parent
            text: Math.round(parent.x) + 'x' + Math.round(y)
        }
        MouseArea{
            id: dragArea
            anchors.fill:parent
            drag.target: parent
            onPressed: {parent.color = ballOn; goal.color= goalOff}
            onReleased: {parent.color = ballOff; parent.Drag.drop()}
            // when we release this, we call parent, drag and call the drop function
        }
    }

}
