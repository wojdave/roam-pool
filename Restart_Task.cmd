:: Script to schedule RV2.2b Restart Task at system level
:: Recursive search of C: will take first found Restart2.2b.* and copy to _SERVICEDIR
:: David Wojcik 2017 03 04

@echo off

SET _SERVICEDIR=C:\ROAMview\Services\

SETLOCAL ENABLEDELAYEDEXPANSION 
:schtasks --- prompt
SET /p prompt="Schedule ROAM Restart Task (Y/N)? " 
IF /I "%prompt%" == "Y" (
	ECHO Scheduling Task to restart ROAM services . . .
    SchTasks /Create /SC DAILY /IT /TN "ROAM Restart" /TR "%_SERVICEDIR%Restart2.2b.cmd" /ST 03:33 /RU SYSTEM
) ELSE IF /I "%prompt%" == "N" ( 
    ECHO INFO: Operation has been cancelled.
) ELSE (
    ECHO Try again . . .
    GOTO :schtasks
)

:copysearch --- prompt
set /p prompt="Copy Restart2.2b.* to ROAMview services (Y/N)? "
IF /I "%prompt%" == "Y" (
    CALL :search
) ELSE IF /I "%prompt%" == "N" ( 
    ECHO INFO: Operation has been cancelled.
) ELSE (
    ECHO Try again . . .
    GOTO :copysearch
)
ENDLOCAL
PAUSE
EXIT /b
 
:search --- subroutine 
ECHO Searching for Restart2.2b.* . . .	
SET count=1
FOR /F "tokens=* USEBACKQ" %%F IN (`where /r C:\ Restart2.2b.*`) DO (
    SET var!count!=%%F
    SET /a count=!count!+1
) 

IF "%var1%" == "" ( 
    EXIT /b
)

ECHO Found Restart2.2b.* in %var1%	
ECHO Copying Restart2.2b.* to %_SERVICEDIR%Restart2.2b.cmd . . .
COPY "%var1%" "%_SERVICEDIR%Restart2.2b.cmd"
EXIT /b

:: Script will use first file found.
:: ECHO %var1%
:: ECHO %var2%
:: ECHO %var3%

