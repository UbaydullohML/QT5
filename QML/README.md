## Contents:
* [1-Intro](#1-intro)
* [2-QtCreator](#2-qtcreator)
* [3-Diving2QML](#3-diving2qml)
* [4-BasicTypes](#4-basictypes)
* [5-positioning-layouts](#5-positioning-layouts)
* [6-properties-animations](#6-properties-animations)


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

https://doc.qt.io/qt-6/qml-qtquick-propertyanimation.html

Transformation in qml - its about transforming the objects apperance through changes, taking an object and transforming into sth else using its properties. 

Whenever we see animation, it changes over time (PropertyAnimation - takes a property and changes it over time)

![image](https://github.com/UbaydullohML/QT5/assets/75980506/8cb477e3-8af1-41ac-b84a-0eb57b1a7e27)

we have rectangle, and two propertyAnimation one moving object to right and one to the left, and including duraiton to move how fast

- rotation and rotation animation

![image](https://github.com/UbaydullohML/QT5/assets/75980506/0e66e9b5-cbce-4957-86af-6db3fb9ff924)

we have a rectangle, inside there is a text, with help on RoationAnimation, we rotate clcokwise, to x number, with duration and mouseArea feature to onClicked to pause, or else to resume

- scale and sequential snimation

https://doc.qt.io/qt-6/qml-qtquick-sequentialanimation.html

https://doc.qt.io/qt-6/qml-qtquick-scaleanimator.html

Runing multiple animation in sequence one after another

![image](https://github.com/UbaydullohML/QT5/assets/75980506/2bca5745-a54d-4dde-a601-8ecb3d3ee355)

sequential animation, and scale animation

- opacity and opacity animation

- smoother animation

- anti-aliasing

- keyboard input

- transform and translate

- drag and drop
