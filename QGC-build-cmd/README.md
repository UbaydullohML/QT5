## setup requirements:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/f7082a0f-6738-4b18-b363-b0238dc2dd61)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/a84fbffd-a0ab-4986-b73b-889ae4df7ec2)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/2d7df5fd-ed81-4451-a4d5-45f92bb86f5c)

## setup environments:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/76405cca-7a54-4f3e-864e-ba823660d2ea)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/25db8183-87b2-42ec-be65-afcf571d57b9)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/80b650b7-2ea0-492b-b124-11ed1aedf8c2)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/e07b8b1b-f151-4bde-838d-3861987c55c5)


building codes:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/bf015470-3649-465d-8d54-86e49eb4803e)

    qmake.exe ../qgroundcontrol.pro -spec android-clang "CONFIG+=debug" "CONFIG+=qml_debug" ANDROID_ABIS="arm64-v8a"

if the make does not work use it this way like below:

    "D:\Programs\Android\Sdk\ndk\21.3.6528147\prebuilt\windows-x86_64\bin\make.exe" -j8

Output:
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/ff8dd9fd-6fd9-43ee-97ea-bfa4a87979ae)

## change the android-SIYIqgc deployment settings.json file,
and if the error comes and ask the libsiyiqgcarm64v8a.so, bring it to below place 
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/edd39304-841e-4be7-9460-a5d8d1192eff)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/7b00ef25-932c-4149-bc61-1361872b22d3)

run below code:

    "D:\Programs\Android\Sdk\ndk\21.3.6528147\prebuilt\windows-x86_64\bin\make.exe" apk
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/4931e67c-b292-4ecc-9f12-9a6f56299d18)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/13cd364a-ebd1-41ba-8788-684dc5a502fb)
![image](https://github.com/UbaydullohML/QGC-compile/assets/75980506/146afea7-720a-4af2-8eb7-04289427a66c)

