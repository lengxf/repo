

@echo 设置path


@IF not EXIST %systemroot%\system32\setx.exe (

@ECHO 未能找到%systemroot%\system32\setx.exe，请下载setx.exe程序
pause
exit

) 

setx MYBIN %USERPROFILE%\bin

setx JAVA_SDK_HOME "C:\Program Files\Java\jdk1.8.0_91"

#setx SCALA_HOME "C:\Program Files (x86)\scala"

#setx SBT_HOME "C:\Program Files (x86)\sbt"


setx ANDROID_SDK_HOME "D:\Android\Sdk"

setx GRADLE_HOME  "D:\Android\android-studio\gradle\gradle-2.12"





setx PATH "%%PATH%%;%%JAVA_SDK_HOME%%\bin;%%ANDROID_SDK_HOME%%\tools;%%ANDROID_SDK_HOME%%\platform-tools;%%GRADLE_HOME%%\bin;%%MYBIN%%;%%SCALA_HOME%%\bin;%%SBT_HOME%%\bin"
pause


