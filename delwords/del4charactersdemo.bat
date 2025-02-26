@echo off
setlocal enabledelayedexpansion
for %%i in (*.jpg) do (
set a=%%~ni
ren %%i "!a:~0,-4!%%~xi"
)
pause