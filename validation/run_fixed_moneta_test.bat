@echo off
cd /d %~dp0
echo ========================================
echo MONETA TEST - SWAP DOUBLE-COUNT FIX
echo ========================================
echo.
echo Compiling with swap fix...
g++ -std=c++17 -O2 -I.. test_fill_up_moneta.cpp -o test_fill_up_moneta_fixed.exe
if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    pause
    exit /b 1
)
echo.
echo Compilation successful! Running test...
echo.
test_fill_up_moneta_fixed.exe > moneta_fixed_results.txt 2>&1
type moneta_fixed_results.txt
echo.
echo ========================================
echo Results saved to: moneta_fixed_results.txt
echo ========================================
pause
