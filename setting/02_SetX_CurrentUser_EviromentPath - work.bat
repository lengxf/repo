

@echo 设置path


@IF not EXIST %systemroot%\system32\setx.exe (

@ECHO 未能找到%systemroot%\system32\setx.exe，请下载setx.exe程序
pause
exit

) 


setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_91" 
set tempPath=%tempPath%;%%JAVA_HOME%%

IF EXIST "%USERPROFILE%\bin"                   			   (setx MYBIN %USERPROFILE%\bin && set tempPath=%tempPath%;%%MYBIN%%)
IF EXIST "C:\Program Files\Git\bin" 			           (setx  GIT "C:\Program Files\Git\bin" && set tempPath=%tempPath%;%%GIT%%)
IF EXIST "C:\Program Files (x86)\scala\bin"    			    (setx SCALA_HOME "C:\Program Files (x86)\scala" && set tempPath=%tempPath%;%%SCALA_HOME%%)
IF EXIST "C:\Program Files (x86)\sbt\bin"                  (setx SBT_HOME "C:\Program Files (x86)\sbt" && set tempPath=%tempPath%;%%SBT_HOME%%)
IF EXIST "D:\Android\Sdk"                                  (setx ANDROID_HOME "D:\Android\Sdk" && set tempPath=%tempPath%;%%ANDROID_HOME%%\platform-tools)
IF EXIST "D:\Android\gradle\gradle-2.14.1\bin"                (setx GRADLE  "D:\Android\gradle\gradle-2.14.1\bin" && set tempPath=%tempPath%;%%GRADLE%%)
;IF EXIST "D:\Program Files\graphviz-2.38\release\bin"       (setx GRAPHVIZ_DOT "D:\Program Files\graphviz-2.38\release\bin" && set tempPath=%tempPath%;%%GRAPHVIZ_DOT%%)
IF EXIST "D:\Android\Android Studio\bin" 					(setx android_studio "D:\Android\Android Studio\bin" && set tempPath=%tempPath%;%%android_studio%%)
IF EXIST "C:\Program Files (x86)\pgAdmin III\1.22" 			(setx  pgAdmin "C:\Program Files (x86)\pgAdmin III\1.22" && set tempPath=%tempPath%;%%pgAdmin%%)
IF EXIST "C:\Python\Python35" 			(setx  Python35 "C:\Python\Python35" && set tempPath=%tempPath%;%%Python35%%)

setx PATH "%%PATH%%;%tempPath%"
pause


