@echo off
echo "Hello World"
SET /A x=1
:loop
  echo %i%
  echo %i%>new.txt
  SET /a i= %i%+1
  pause
GOTO :LOOP
