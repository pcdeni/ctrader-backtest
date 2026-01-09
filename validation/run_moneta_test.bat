@echo off
cd /d %~dp0
echo Starting Moneta Markets Backtest...
echo.
test_fill_up_moneta.exe
echo.
echo Test completed!
pause
