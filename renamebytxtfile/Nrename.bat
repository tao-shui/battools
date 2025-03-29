@echo off 1>nul
chcp 936>nul 2>nul
REM 使用相对路径
REM 支持png和jpg
REM ex配置文件跟需要处理的文件放在一起
echo ^>^>^>pls pull the folder here and press enter
echo ^>^>^>or press enter directly to use current path
echo ^>^>^>拉取需要处理的文件夹按回车启动
echo ^>^>^>直接按回车将使用当前路径
set /p a=^>^>^>
if not defined a set a=%cd%
REM if ^%a:~0,1%==^" set a=%a:~1,-1%
cd /d %a%
echo Current Path: %cd%
rem type ex.txt

for /f "tokens=1,*" %%i in (ex.txt) do (	
if exist "%%j.jpg" (
if exist "%%j.png" (
if not exist "%%i.png" (
if not exist "%%i.jpg" (
ren "%%j.jpg" "%%i.jpg"
ren "%%j.png" "%%i.png"
echo %%j.jpg --^> %%i.jpg
echo %%j.png --^> %%i.png
) else (
echo %%i.jpg 已存在
ren "%%j.png" "%%i.png"
echo %%j.png --^> %%i.png
)
) else (
if not exist "%%i.jpg" (
echo %%i.png 已存在
ren "%%j.jpg" "%%i.jpg"
echo %%j.jpg --^> %%i.jpg
) else (
echo 存在以 %%i 命名的 jpg 和 png 图片
)
)
) else (
if not exist "%%i.jpg" (
ren "%%j.jpg" "%%i.jpg"
echo %%j.jpg --^> %%i.jpg
) else (
echo %%i.jpg 已存在
))
) else (
if exist "%%j.png" (
if not exist "%%i.png" (
ren "%%j.png" "%%i.png"
echo %%j.png --^> %%i.png
) else (
echo %%i.png 已存在
)
) else echo 不存在以 %%j 命名的 jpg 或 png 图片
)



)
pause>nul

rem for /f "tokens=1,2", %i in (ex.txt) do echo %i %j

