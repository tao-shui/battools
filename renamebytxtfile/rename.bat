@echo off 1>nul
chcp 936>nul 2>nul
REM 使用绝对路径
REM ex配置文件需要跟当前脚本放在一起
echo ^>^>^>pls pull the folder here and press enter
echo ^>^>^>or press enter directly to use current path
echo ^>^>^>拉取需要处理的文件夹按回车启动
echo ^>^>^>直接按回车将使用当前路径
set /p a=^>^>^>
if not defined a set a=%cd%
if ^%a:~0,1%==^" set a=%a:~1,-1%
echo 当前路径：%a%
rem type ex.txt
for /f "tokens=1,*" %%i in (ex.txt) do (
if exist "%a%\%%j.jpg" (
if not exist "%a%\%%i.jpg" (
ren "%a%\%%j.jpg" "%%i.jpg"
echo %%j.jpg --^> %%i.jpg
) else (
echo %%i.jpg 图片已存在
)
) else (
echo %%j.jpg 图片不存在
)
)

pause>nul

rem for /f "tokens=1,2", %i in (ex.txt) do echo %i %j