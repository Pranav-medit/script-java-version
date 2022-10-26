:: Used like > SJV 10
@echo off
:: Set variable /A is used to represent the variable is some type of number
set /A hasError = 0 
:: Accept argument from user
if "%~1" == "1.8" (
   set "JAVA_HOME=C:\Program Files\Java\jre1.8.0_331"
) else if "%~1" == "9" (
   set "JAVA_HOME=C:\Program Files\Java\jdk-9.0.4"
) else if "%~1" == "10" (
   set "JAVA_HOME=C:\Program Files\Java\jre-10.0.2"
) else if "%~1" == "11" (
   set "JAVA_HOME=C:\Program Files\Java\jdk-11.0.13"
) else if "%~1" == "17" (
	set "JAVA_HOME=C:\Program Files\Java\jdk-17.0.5"
) else (
	echo No valid version found, but you can add it inside "C:\Program Files\Java\scripts\SJV.bat"
  :: Set variable has error to true
	set /A hasError = 1
) 
:: If has error activate version.
if %hasError% equ 0 ( 
	echo Java %~1 activated.
) else (
	echo Unable to activate java version %~1.
)  
set "Path=%JAVA_HOME%\bin;%Path%"
