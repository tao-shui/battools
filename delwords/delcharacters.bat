@chcp 936>nul 2>nul
@echo off
set /p c="输入需要处理文件的后缀："
set /p b="输入需要删减的字符数："
setlocal enabledelayedexpansion
for %%i in (*.%c%) do (
set a=%%~ni
ren "%%i" "!a:~0,-%b%!%%~xi"
)
echo 完成，按回车键退出...
pause>nul