@echo off
cd /d %~dp0
echo Compiling Moneta backtest...
C:\msys64\ucrt64\bin\g++.exe -std=c++17 -O2 -I..\include test_fill_up_for_moneta.cpp -o test_fill_up_for_moneta.exe
if errorlevel 1 (
    echo Compilation failed!
    pause
    exit /b 1
)
echo Running Moneta backtest...
test_fill_up_for_moneta.exe
echo.
echo Done!
pause
