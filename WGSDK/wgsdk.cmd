@echo off

title WinGameSDK
:: Checking for first-runtime of application.
if exist license\key goto main
if not exist license\key goto new

:new
echo Copyright 2022 Revenant LLC

echo Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

echo The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

echo THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
echo.
pause
echo License granted on: %time%, %date%.>>license\key

:main
cls
echo 	CHOOSE AN OPERATION
echo  1  New Project
echo  2  Export
echo  3  Import
echo  4  Settings
echo.
echo NOTE: You will need an external code editor for projects.
echo.
SET /P M=[TERMINAL]:
IF %M%==1 goto newproj
IF %M%==2 goto export
IF %M%==3 echo hi
IF %M%==4 echo hi

:newproj
cls
echo [TERMINAL]: ENTER PROJECT NAME [WITHOUT .wgproj EXTENSION]
set /p newprojname=[TERMINAL]:
cls
echo @echo off>>projects\%newprojname%.wgproj
echo echo Type your code here.>>projects\%newprojname%.wgproj
echo [TERMINAL]: OPERATION SUCCESSFUL.
echo [TERMINAL]: PROJECT CREATED WITH NAME "%newprojname%.wgproj".
echo [TERMINAL]: MAIN MENU - PRESS ANY KEY
pause>nul
goto main

:export
cls
echo [TERMINAL]: CHOOSE A FILE TO EXPORT [WITHOUT .wgproj EXTENSION]
set /p tmpprojexportname=[TERMINAL]:
