import QtQuick 2.15
import QtQuick.Window 2.15

// Top level object
Window { // parent, root object
    width: 640
    height: 480
    visible: true
    title: qsTr("QML")
    id:root

    Image {  // child
        id: myimage1
        source: 'https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg'
        anchors.centerIn: parent
        width:  200
        height: 150

        Rectangle{
            color: "red"
            width: parent.width
            height: parent.height
            opacity: 0.1

        }
    }

    // 19. Comment
    /*
      makes life super easy
      this is a multi-line
      */


    // 20.Root objects and IDs

    // ID -must be unique
    // Root object - there can be only one
    // Qt uses parent child hierarchy to manage memory


    // 21. QML objects vs QObjects

    TextInput{
        id:myinput
        text:  "QML and QT5"
        anchors.centerIn: parent
        font.pixelSize: 25
    }

    Text{
        id: mytext
        text: myinput.text
        font.pixelSize: 25  // real time changes according to text input, property binding
        anchors.right: parent.right
        anchors.rightMargin: 20

    }

    // 22.xyz positioning

    Image {  // child
        id: myimage2
        source: 'https://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg'
        width:  150
        height: 100
        x: 50
        y: 50
        z: 5
        // 23.Parent and children relationship
        Rectangle{
            x: -25
            y: -25
            width: 50
            height: 50
            color: 'green'
            opacity: 0.6
        }

        Rectangle{
            x: parent.width - height
            y: parent.height - height
            width: 50
            height: 50
            color: 'blue'
            opacity: 0.6
        }
    }

    //23.
    Rectangle{
        color: "blue"
        width: 200
        height: 200
        x: 50
        y: 50
        opacity: 0.5
    }

    Rectangle{
        color: "yellow"
        width: 200
        height: 200
        x: 150
        y: 150
        opacity: 0.5
    }

    // 24. object interaction - TapHandler
    Rectangle{
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        width: 100
        height: 100

        color: inputhandler.pressed ? "yellow" : "green"

        // tap screen
        TapHandler{
            id: inputhandler
        }
    }

}
