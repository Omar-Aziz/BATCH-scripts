@echo off
echo Batch Script to take input.
set /p input= Type any input
echo Input is: %input%
if %input%==start (
	
	tasklist /fi "ImageName eq counter.bat" /fo csv 2>NUL | find /I "counter.bat">NUL
if "%ERRORLEVEL%"=="0" ( echo Program is already running  
call :ENDi)

	
	
 call counter.bat 
 pause) 
if %input%==stop (
 taskkill /f /im cmd.exe && echo "terminated Rainmeter" 
 pause)
else (echo "ERROR"
 
 pause) 
 :ENDi
pause