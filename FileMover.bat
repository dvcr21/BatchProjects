@echo off
:start
echo Please tell me the file name.
echo...
set /p filename=

if exist %filename% (
	echo File found
	choice /c "YN" /m "Want to move it? "
	if errorlevel 2 (
		echo Alright.
		goto start
	)
	if errorlevel 1 goto moving
) else goto start

:moving
echo Ok, Where should I move it? Please enter the full path:
set /p directory=

if exist %directory% (
	move /Y %filename% %directory%
	echo Success, I've moved %filename% to %directory%
	dir %directory%
)