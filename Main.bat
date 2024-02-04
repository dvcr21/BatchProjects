@echo off
:start
echo Please select an option below:

choice /c "ABC" /m "A. Calculator B. File mover C. File copier."

if errorlevel 3 goto copier
if errorlevel 2 goto mover
if errorlevel 1 goto calc

:calc
echo "Press any key to continue or press q to exit..."
choice /c:qabcdefghijklmnoprstuvwxyz /n

if %errorlevel% equ 1 goto start

echo Please enter two numbers to be used as parameters:
set /p n1="Number 1: "
set /p n2="Number 2: "
echo Processing...
calculator.bat %n1% %n2%

:mover
FileMover.bat

:copier
echo "Press any key to continue or press q to exit..."
choice /c:qabcdefghijklmnoprstuvwxyz /n

if %errorlevel% equ 1 goto start

set /p file="Please provide a file name: "

Copycat.bat %file%