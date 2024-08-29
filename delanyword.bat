@echo off
@chcp 65001
setlocal enabledelayedexpansion
for %%i in (1*.jpg*) do (
set fn=%%~ni
set fb=%%~xi
if not exist "!fn:~0,-3!!fb!" (
ren "%%i" "!fn:~0,-3!!fb!"
) else (
set /a a+=1
)
)
if !a! GEQ 1 (
echo 跳过了!a!个文件
)
pause