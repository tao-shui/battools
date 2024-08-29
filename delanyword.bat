rem 替换格式(*.*)过滤文件
rem 保留前三位：!fn:~0,3!
rem 保留后三位：!fn:~-3!
rem 去掉前三位：!fn:~3!
rem 去掉后三位：!fn:~0,-3!
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
