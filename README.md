# QGC-compile 

![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/0ee6fdc6-f5ec-4ff7-afce-434de3be2795)

![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/2d382300-fa24-45e9-af98-c0d427d9cc1b)

inside qmake.exe folder  
    
    qmake.exe $C:/Qt/5.15.2/android/bin/qmake.exe D:\models\QTDev\qgroundcontrol\qgroundcontrol.pro -spec android-clang "CONFIG+=debug" "CONFIG+=qml_debug" ANDROID_ABIS="arm64-v8a" 


in qgc folder and entered to build

    
    qmake.exe ../qgroundcontrol.pro -spec android-clang "CONFIG+=debug" "CONFIG+=qml_debug" ANDROID_ABIS="arm64-v8a"


f

    C:\Users\ubayd\AppData\Local\Android\qgroundcontrol\build>"C:\Users\ubayd\AppData\Local\Android\Sdk\ndk\21.3.6528147\prebuilt\windows-x86_64\bin\make.exe" qmake_all
d

    C:\Users\ubayd\AppData\Local\Android\qgroundcontrol\build>"C:\Users\ubayd\AppData\Local\Android\Sdk\ndk\21.3.6528147\prebuilt\windows-x86_64\bin\make.exe" -j8


d folder

    D:\models\QTDev\qgroundcontrol\build>"D:\Programs\Android\Sdk\ndk\21.3.6528147\prebuilt\windows-x86_64\bin\make.exe" -j8


        
## go to /libs/libevents/libevents/ and run git submodule init && git submodule update, that will pull the latest libevents that has the file you are missing


    git submodule init && git submodule update
