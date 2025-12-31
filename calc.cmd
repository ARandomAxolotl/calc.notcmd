@echo off
goto h
:h
setlocal enabledelayedexpansion
for /f %%a in ('echo prompt $H ^| cmd') do set "BS=%%a"
echo /-----------------------------------\
echo ^| My other project : notepad--.cmd  ^|
echo ^|     Available on my github^^!       ^|
echo ^|        Do you want it^?            ^|
echo \-----------------------------------/
choice /C YNE
if errorlevel 3 exit
if errorlevel 2 goto hh
if errorlevel 1 goto hhh
goto hhhh

:hhhh
set /p d=Enter your calculation : 
set /a ddd=100
<nul set /p "=Calculating using the most intelligent AI available...  "
for /L %%i in (1,1,%ddd%) do (
    for %%A in (^| / - \) do (
        <nul set /p "=!BS!%%A"
        ping 127.0.0.1 -n 1 -w 10 >nul
    )
)
echo.
set /a dd=%d%
if %errorlevel% NEQ 0 (
    echo Hello World!
) else (
    echo The answer is %dd%
)
exit

:hh
choice /m "Do you want to use it?"
if errorlevel 2 goto hhhh
if errorlevel 1 goto hhh

:hhh
curl https://raw.githubusercontent.com/ARandomAxolotl/notepad--/refs/heads/main/notepad--.cmd --output notepad--.cmd
goto hhhh