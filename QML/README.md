## Contents:
* [1-Intro](#1-intro)
* [2-QtCreator](#2-qtcreator)
* [3-Diving2QML](#3-diving2qml)
* [4-BasicTypes](#4-basictypes)
* [5-positioning-layouts](#5-positioning-layouts)
* [6-properties-animations](#6-properties-animations)
* [7-Introducing-designer](#7-introducing-designer)
* [8-Qt-Quick](#8-qt-quick)
* [9-QML-project](#9-qml-project)
* [10-javascript](#10-javascript)


## 1-Intro
4. QML vs QT quick

- QML - QT markup language
  
QML is UI - for c++ or python with support of pyside2 application

QML can use javascript and interface with backend c++, python = highly responsive front end, which has programming logic (JavaScript) and communicate with powerfull backend tech.
It is ui, rendering and visual effects, except that are done in backend. 
QT uses signals and slots to communicate between objects
QML uses signals and slots through bindings and connections. 


- QT Quick - standard library for all QML applications (creating and animating visual elements)

Binding C++ objects to QML can be little challenge.
In Supported Platforms: https://doc.qt.io/qt-5/supported-platforms.html, QML is fully supported. 


- QT Creator - QT primary IDE

3rd party are written on top of QML and QT:

Felgo - app platform   - https://felgo.com/
QTFirebase (Larpon)  - https://firebase.google.com/  , https://github.com/Larpon/QtFirebase


- QT Widgets - fundametal UI elements  in QT framework to create desktop stype user interface
  
(Classic, long term support, tight dekstop integration, Linux, Max, Windows, looks native)

- QML:
  
(Newer, long term support, easy animations, states and transitions, separate GUI from implementation, runs anywhere)


"Write once build anywhere"

For cross compile and remote deployment:

Build it and test it in Windows, but then copy that code to mac and Linux box and test there, 99% of time it works flowlessly. 

Ref:

https://doc.qt.io/qt-6/qtquick-qmlmodule.html

qt quick qml object types

## 2-QtCreator

- QML example project - qt quick qpplication - empty (python)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/cae9eecb-fb5a-4539-b99f-6873f1832a81)

QML file - declarative language to design UI in Qt applications, specifies visual componenets, structure, appearance of GUI elements, 

![image](https://github.com/UbaydullohML/QT5/assets/75980506/d0fcfdfc-8bd8-4ae9-b269-065b43ada4cc)

python file - backend logic, for qt application, it handles data processing, logic, interaction with databases, othere server side functionality. it defines classes, functions, other structures necessary for application's operation. 

![image](https://github.com/UbaydullohML/QT5/assets/75980506/e85e7ac4-23d8-48c9-8192-40956024d652)

.pro (.pyproject for python) file - it is project file, specifies settings and configuration for Qt project. it contains project name, source files, libraries used, build configuration, other specific settings, references to py or c++ settings or paths. 


- Qt quick application - compat

![image](https://github.com/UbaydullohML/QT5/assets/75980506/a5c290bd-a7ed-492c-85c2-9b73c7a9d9a5)

with c++, qml file is almost same, just first two lines includes versions:

    import QtQuick 2.15
    import QtQuick.Window 2.15

Typically, QT application with py or c++ files contains backend logic and communciates with QML file .qml for user interface. .pro file configures project settings, and defines how qml ui components and c++ backend are integrated and built together.

- Kit - defines how application gets compiled. 



## 3-Diving2QML

comments is //

- root objects, id must be unqiue, root object can be only one. Qt uses parent child hierarchy to manage memory

- QML objects vs QObjects:

QML (Qt Modeling Language) objects - are used for defining the user interface in Qt Quick applications. They represent visual elements such as buttons, text fields, images, and layouts. QML objects are typically defined in .qml files and describe the appearance and behavior of UI components.

    Rectangle {
    width: 100
    height: 100
    color: "red"
    // Other properties and behaviors
    }

QObjects - are a fundamental building block in Qt applications, providing the foundation for QObject-based classes that add functionality to your application. They are used for implementing application logic, managing resources, handling events, and interacting with other parts of the Qt framework.

QObjects are typically implemented in C++ and inherit from the QObject class. They form a hierarchical tree structure, allowing for efficient memory management and event handling through the Qt signal-slot mechanism.

QObjects are not directly used in QML files but are often used behind the scenes to provide functionality to QML objects. For example, a QObject-based class might be used to handle data processing or business logic, which is then accessed from QML for presentation in the user interface.

    class MyObject : public QObject {
    Q_OBJECT
    public:
        explicit MyObject(QObject *parent = nullptr);
        // Other methods and properties
    };

In summary, QML objects are primarily used for defining the user interface in Qt Quick applications, while QObjects are used for implementing application logic and functionality in C++ code. They complement each other in Qt applications, with QObjects often providing the backend support for QML objects to create fully featured applications.


https://bcairns.medium.com/understanding-qobject-in-qt-97de374ca0cd


- xyz positioning - x and y positing, and z is for emphasizing the overlay on one level

- parent and child transformations
  
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
              z: 0
              width: 50
              height: 50
              color: 'green'
              opacity: 0.6
          }
  
          Rectangle{
              x: parent.width - height
              y: parent.height - height
              z:0
              width: 50
              height: 50
              color: 'blue'
              opacity: 0.6
          }
      }


- object interaction - TapHandler - it is function which it give access to interact with the object, the below sample is TapHandler, when once tapped it changes the color as up and down color:

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


## 4-BasicTypes

- item type - all visual item in Qt Quick inherit from item. it defines attributes that are common across visual items, x,y position. widht height , anchoring, The Item QML type inherits from QtObject and can be used to create visual types such as:
AnimatedSprite, BorderImage, Canvas, Column, ColumnLayout, DropArea, Flickable, Flipable, Flow, and FocusScope. But (Item QML type), which is invisible, cause we cannot set visual appearance, which has no visual appearance:

https://doc.qt.io/qt-6/qml-qtquick-item.html

![image](https://github.com/UbaydullohML/QT5/assets/75980506/ef2983a8-082c-4748-8664-cf0b5868ea7d)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/c078bdae-f615-4bfb-ab76-486b023e667f)

it exists solely so that you can make your own components and you can say, i wanna define my own custom object. 


- rectangle

![image](https://github.com/UbaydullohML/QT5/assets/75980506/1d8f4a12-0fb5-40de-8a0a-01d46c2b0ae8)

in order to create circle we first create rectangle and specify the radius to make it circle, only method is this, 

and we could set the gradient code to combine colors at the position

- image

![image](https://github.com/UbaydullohML/QT5/assets/75980506/46e70347-64fd-4104-bd26-2fe3408ced3b)

image related codes, and auto image size scaler, and image download progress

- text

https://doc.qt.io/qt-6/qml-qtquick-text.html

![image](https://github.com/UbaydullohML/QT5/assets/75980506/fd00ac46-8a8b-4656-b275-8177e7c5ccfb)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/ebd6439b-3beb-4a59-816f-942197c77640)

this signals linkActivated() is getting emitted / send out, and qml in the background , connecting them to slot that starts with on and whatever signal name onLinkHovered()

- mouse area

https://doc.qt.io/qt-6/qml-qtquick-mousearea.html

![image](https://github.com/UbaydullohML/QT5/assets/75980506/53c67da4-acf3-4e9b-938d-29e2740962c3)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/d4a09172-4f0f-41e4-9c7a-c7743bb70d0b)

mouse area, enable left click and right click to trigger color change and ome function, double click feature, position change log on x and y, and enter rectange feature function and exit feature funciton.

- custom component

![image](https://github.com/UbaydullohML/QT5/assets/75980506/917395e6-66d0-485c-bed0-85ce4bac4b10)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/b07f13cb-cf73-45f1-8bcc-eb48d771bf48)

creating new qml and connecting and combined usage of them, and creating 4 buttons on main.qml

## 5-positioning-layouts

- object positioning using x, y

![image](https://github.com/UbaydullohML/QT5/assets/75980506/4fddeaf2-d2fe-45d5-a8d1-3a19afb6c1ff)

using javascript function, we track position change parameters, , drag.target is used to move the mouse,component.onCompleted: update() for function call, function name is update()

- object positoning using z

![image](https://github.com/UbaydullohML/QT5/assets/75980506/ccf71f91-56dc-4ac9-bea2-c641975750ef)

we created new qml, and connected them using its mouseArea() feature,, and inside, it givge drag mouse in parent dir, and onClicked parent.z++, if we click it increments z position.
  
ref: 

![image](https://github.com/UbaydullohML/QT5/assets/75980506/9ef7f005-a40c-4ef6-9c20-10b54ef01021)

adding qml file 

- column layout

- layouts - easy object positioning

to manage positions and sizes of widgets in GUI application.

https://doc.qt.io/qt-6/qml-qtquick-column.html

![image](https://github.com/UbaydullohML/QT5/assets/75980506/0b708adc-edc3-444c-bf36-237239a75df4)

using myShape qml inside column{}, with spacing : 2 pixels and center in features

- row layout

      // 5-34 row layout
  
      Row{
          spacing: 2
          anchors.centerIn: parent
          MyShape{color: "red"}
          MyShape{color: "blue"}
          MyShape{color: "yellow"}
      }

just by chaning column{} layout to row{} layout

- grid layout

(objects can be stacked on top of each other if there is no enough rows and columns )

https://doc.qt.io/qt-6/qml-qtquick-grid.html

    // 5-35 grid layout
    Grid{
        anchors.centerIn: parent
        spacing: 3
        rows: 2
        columns: 5

        MyShape {color:"red"}
        MyShape {color:"blue"}
        MyShape {color:"green"}
        MyShape {color:"black"}
        MyShape {color:"gray"}
        MyShape {color:"brown"}
        MyShape {color:"orange"}
    }

- flow layout

https://doc.qt.io/qt-6/qml-qtquick-flow.html

![image](https://github.com/UbaydullohML/QT5/assets/75980506/ce46a7fb-c72f-4e00-85f3-ea9259aa6087)

Positions its children side by side, wrapping as necessary.

- anchors

it binds object to a location or object reference

it is used to stick different parts of program user interface together, telling program to put each part of ui so that they stay in right place

https://doc.qt.io/qt-6/qtquick-positioning-anchors.html


![image](https://github.com/UbaydullohML/QT5/assets/75980506/def47f52-ea55-4243-80f2-33e838cb85f4)

all sorts of anchor usages, and connected rectangles together and could be dragged all together, and the correct version of writing item in separate qml file

- margins

![image](https://github.com/UbaydullohML/QT5/assets/75980506/8aba0160-eb09-4b35-87f3-4b321a499655)

if anchor is not set, margin will not be there as well

- simple image viewer

![image](https://github.com/UbaydullohML/QT5/assets/75980506/f8982cb7-5588-4efd-b96c-ad66ae9a03bf)

image viewer, including positioning both with anchors and through columns, and through x y coordinates, custom component aliases, and hook events, and basic units of interaction. interactive UI.


What happenes in background when a property binding is used??

signals and slots are used 


## 6-properties-animations

- property and property animation

property changes over time

https://doc.qt.io/qt-6/qml-qtquick-propertyanimation.html

Transformation in qml - its about transforming the objects apperance through changes, taking an object and transforming into sth else using its properties. 

Whenever we see animation, it changes over time (PropertyAnimation - takes a property and changes it over time)

![property](https://github.com/UbaydullohML/QT5/assets/75980506/fa4612d9-0bc8-4ce8-b90d-f3a9d1e1d161)

we have rectangle, and two propertyAnimation one moving object to right and one to the left, and including duraiton to move how fast

- rotation and rotation animation

![rotationanimation](https://github.com/UbaydullohML/QT5/assets/75980506/9d46d651-c39f-4b21-9172-083d82bfc90d)

we have a rectangle, inside there is a text, with help on RoationAnimation, we rotate clcokwise, to x number, with duration and mouseArea feature to onClicked to pause, or else to resume

- scale and sequential snimation

https://doc.qt.io/qt-6/qml-qtquick-sequentialanimation.html

https://doc.qt.io/qt-6/qml-qtquick-scaleanimator.html

Runing multiple animation in sequence one after another

![scaleanimator](https://github.com/UbaydullohML/QT5/assets/75980506/58b16be5-9a8e-459f-bd45-e33dd2bd2c88)

sequential animation, and scale animation

- opacity and opacity animation

https://doc.qt.io/qt-6/qml-qtquick-opacityanimator.html

![opacityv](https://github.com/UbaydullohML/QT5/assets/75980506/814efc30-67a9-4906-8221-fe3a767d679b)

QML type that animates the opacity of item in qt quick

- smoother animation

smooths the timing and properties on an average

https://doc.qt.io/qt-6/qml-qtquick-smoothedanimation.html

it basically takes animation and makes it little bit smoother

![smoothed](https://github.com/UbaydullohML/QT5/assets/75980506/4b5a2b9a-6fd2-4638-b94a-e418d9482239)

it animates value to set a target value using an ease in/out quad easing curve. When the target value changes, the easing curves used to animate between the old and new target values are smoothly spliced together to create a smooth movement to the new target value that maintains the current velocity.

- anti-aliasing

smoothing rough edges of objects

![image](https://github.com/UbaydullohML/QT5/assets/75980506/ac19e933-4a0c-4e38-a27e-7fc3a142cdee)

anti aliasing is automatically on, and make it off,if performance issues, liek on embedded devices

- keyboard input

![keyboardwh](https://github.com/UbaydullohML/QT5/assets/75980506/43c7788d-dee5-46c4-a136-cecd036e71c7)

with keyboard right left, up and down pressed width and height is editedas on above output

- transform and translate

translate - move item without changing its x or y properties

https://doc.qt.io/qt-6/qml-qtquick-transform.html

https://doc.qt.io/qt-6/qml-qtquick-transition.html

![transformTranslate](https://github.com/UbaydullohML/QT5/assets/75980506/de98ad6c-9f2c-4b0e-aff3-3b937437e4b8)

it provides independent control over position in addition to item x and y properties



## 7-Introducing-designer

in qt qcreator

![image](https://github.com/UbaydullohML/QT5/assets/75980506/0672010e-88dc-4457-9dc7-755a5b37e0d6)

in qt design studio

![image](https://github.com/UbaydullohML/QT5/assets/75980506/c11dbc02-1233-4d93-9a9b-9f8905330686)


![image](https://github.com/UbaydullohML/QT5/assets/75980506/5cb67986-7636-428c-b0db-59833314ac53)

connections and bindings:

![image](https://github.com/UbaydullohML/QT5/assets/75980506/839d7908-4e36-4bb4-acf2-d4b4277f7e16)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/d6199f48-e702-4ac9-b8a1-62948c57bd00)

when first rectangle is clicked both are isntantly changesd:

![image](https://github.com/UbaydullohML/QT5/assets/75980506/5954de76-c666-41a8-9423-045308db5353)

cause of :

![image](https://github.com/UbaydullohML/QT5/assets/75980506/354365f4-9f63-4f36-b78f-63856fa521b5)



    // 7-52 connections and properties
    Rectangle {
        id: rectangle
        x: 502
        y: 154
        width: 384
        height: 406
        color: "#005500"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        x: 974
        y: 154
        width: 389
        height: 406
        color: "#0000ff"
        property string title: "Title"

        Text {
            id: text1
            color: "#ffffff"
            text: parent.title
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 70
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Connections {
        target: mouseArea
        onClicked: rectangle1.title = "Hello"
    }

![image](https://github.com/UbaydullohML/QT5/assets/75980506/9c219645-c0cd-463c-8022-9418f1ba7030)


above is done using property on the abaove code

connections - is connection between signal and slots

state - set of property changes

image is not deployed with binary automatically


## 8-Qt-Quick

- qt quick controls

https://doc.qt.io/qt-6/qtquickcontrols-index.html

![image](https://github.com/UbaydullohML/QT5/assets/75980506/a4c1f874-075a-4170-8ee4-ccf548437cda)

- label

![image](https://github.com/UbaydullohML/QT5/assets/75980506/0a051e55-63cf-462a-8dc2-fbec80cfc3ba)

using qt designer, experiments with labeling

- busy indicator

![image](https://github.com/UbaydullohML/QT5/assets/75980506/7bbd750b-8c30-430e-a121-376bb57e76f4)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/7149565d-58ec-4b8b-a73f-340d082554d6)


progress indicator without percentage, which is turned on and off

- button

          // 8-58 button
          Row {
              id: row
              x: 0
              y: 668
              width: 1024
              height: 100
              anchors.bottom: parent.bottom
              anchors.bottomMargin: 0
              layer.enabled: false
  
              Button {
                  id: button
                  x: 0
                  width: 180
                  height: 100
                  text: qsTr("Cat")
                  anchors.right: parent.right
                  anchors.rightMargin: 750
                  display: AbstractButton.TextBesideIcon
              }
              Button {
                  id: button1
                  x: 0
                  width: 200
                  height: 100
                  text: qsTr("Dog")
                  anchors.right: parent.right
                  anchors.rightMargin: 520
                  display: AbstractButton.TextBesideIcon
              }
              Button {
                  id: button2
                  x: 0
                  width: 200
                  height: 100
                  text: qsTr("Fish")
                  anchors.right: parent.right
                  anchors.rightMargin: 300
                  display: AbstractButton.TextBesideIcon
              }
              Button {
                  id: button3
                  x: 0
                  width: 200
                  height: 100
                  text: qsTr("Bird")
                  anchors.right: parent.right
                  anchors.rightMargin: 80
                  display: AbstractButton.TextBesideIcon
              }
          }
          Image {
              id: image
              x: 0
              y: 48
              width: 1024
              height: 605
              fillMode: Image.PreserveAspectFit
          }
          Connections {
              target: button
              onClicked: image.source = "images/cat.jpg"
          }
          Connections {
              target: button1
              onClicked: image.source = "images/dog.jpg"
          }
          Connections {
              target: button2
              onClicked: image.source = "images/fish.jpg"
          }
          Connections {
              target: button3
              onClicked: image.source = "images/qt.png"
          }
      }

![image](https://github.com/UbaydullohML/QT5/assets/75980506/2a0fb60b-e9ee-4420-9bfd-70c2b8e5953d)

clicable and interactive buttons implementation


## 9-QML-project


## 10-Javascript
