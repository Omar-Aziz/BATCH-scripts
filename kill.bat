

FOR /F "tokens=* delims=" %%x in (new.txt) do set Build=%%x

echo %Build%
:loop
FOR /F "tokens=* delims=" %%x in (new.txt) do set Build=%%x
IF %Build% geq 100 GOTO END
echo %Build%
GOTO :LOOP

:END
cd "C:\Windows\System32"
echo %i%
taskkill /f /im cmd.exe && echo "terminated Rainmeter"
exit
