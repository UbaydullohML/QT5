## setup requirements:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/f7082a0f-6738-4b18-b363-b0238dc2dd61)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/a84fbffd-a0ab-4986-b73b-889ae4df7ec2)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/2d7df5fd-ed81-4451-a4d5-45f92bb86f5c)

## setup environments:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/76405cca-7a54-4f3e-864e-ba823660d2ea)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/6d7ea7ef-3750-431f-a7b2-d6af4c41177a)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/c76fa33c-7603-4e7c-abaf-eeee54181a03)


building codes:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/bf015470-3649-465d-8d54-86e49eb4803e)

    qmake.exe ../qgroundcontrol.pro -spec android-clang "CONFIG+=debug" "CONFIG+=qml_debug" ANDROID_ABIS="arm64-v8a"

if the make does not work use it this way like below:

    "D:\Programs\Android\Sdk\ndk\21.3.6528147\prebuilt\windows-x86_64\bin\make.exe" -j8

Output:
