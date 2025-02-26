@echo off 1>nul
chcp 936>nul 2>nul
for /f "tokens=1,*", %%i in (ex.txt) do (

if exist "%%j.jpg" (
if not exist %%i.jpg (
ren "%%j.jpg" "%%i.jpg"
) else (
echo %%i.jpg 图片已存在
)
) else (
echo %%j.jpg 图片不存在
)



)

pause>nul

rem for /f "tokens=1,2", %i in (ex.txt) do echo %i %j
rem 需要填写配置文件ex.txt