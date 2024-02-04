@echo off

set num1=%1
set num2=%2

echo Thank you for the numbers, Please select the type of operation you want to perform.

:StartCalculation
set /p operator=1: sum, 2: substraction, 3: multiply, 4: divide: 

if %operator% equ 1 (
	set /a result=%num1%+%num2%
)
	
if %operator% equ 2 (
	if %num1% geq %num2% (
		set /a result=%num1%-%num2%
	) else (
		set /a result=%num2%-%num1%
	)
)
	
if %operator% equ 3 (
	set /a result= %num1%*%num2%
)
	
if %operator% equ 4 (
	if %num1% geq %num2% (
		if %num2% equ 0 (
			echo That's dangerous, you lunatic.
			goto StartCalculation
		) else (
			set /a result=%num1%/%num2%
		)
	) else (
		if %num1% equ 0 (
			echo That's dangerous, you lunatic.
			goto StartCalculation
		) else (
			set /a result=%num2%/%num1%
		)
	)

	
)

echo The result is %result%.
	
pause