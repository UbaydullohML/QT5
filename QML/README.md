## Contents:
* [1-Intro](#1-intro)
* [2-QtCreator](#2-qtcreator)
* [3-Diving2QML](3-diving2qml)





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


## 3-Diving2QML
