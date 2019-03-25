@echo off 

choice /m "Uninstall rename-date? You will need administrator rights."

if errorlevel 2 goto end

set d=c:\rename-date

cd %tmp%
mkdir uninst-rd
cd uninst-rd

copy %d%\uninstall\uninstall.reg .
start uninstall.reg

copy %d%\uninstall\uninstall2.bat .
choice /d y /t 2 > nul
start uninstall2.bat

:end
