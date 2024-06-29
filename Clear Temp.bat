@echo off

title Temp Clearer, Made by LousyBook01


set TEMP_DIR=%TEMP%
set PREFETCH_DIR=%SYSTEMROOT%\Prefetch
set TEMP_OTHER_DIR=%SYSTEMROOT%\Temp

goto Main

:DeleteFiles
echo Deleting files from %1...
del /q /f /s "%1\*.*"

:Main
echo Made by LousyBook01 [ www.youtube.com/@LousyBook01, www.github.com/LousyBook-01 ]

echo Press any key to Delete Temp Files...
pause >nul

call :DeleteFiles "%TEMP_DIR%"
call :DeleteFiles "%PREFETCH_DIR%"
call :DeleteFiles "%TEMP_OTHER_DIR%"

echo Done!
pause