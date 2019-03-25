rem @echo off

choice /m "Install rename-date? You will need administrator rights."
if errorlevel 2 goto end

set d=c:\rename-date
mkdir %d%

copy readme %d%
copy license %d%
copy install\install.reg  %d%
copy install\rename-date.bat %d%
copy install\uninstall.bat %d%

mkdir %d%\uninstall
copy install\uninstall\uninstall.reg %d%\uninstall
copy install\uninstall\uninstall2.bat %d%\uninstall

start %d%\install.reg

pause

:end
