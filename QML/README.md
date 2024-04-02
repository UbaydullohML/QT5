## Contents:
* [1-Intro](#1-intro)






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


