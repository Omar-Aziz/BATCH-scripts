@echo off
FOR /F "tokens=* delims=" %%x in (new.txt) DO echo %%x
pause