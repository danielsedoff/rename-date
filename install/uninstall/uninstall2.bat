rem @echo off

set d=c:\rename-date

cd %d%
del install.reg
del rename-date.bat
del uninstall.bat
del readme
del license

cd uninstall
del uninstall.reg
del uninstall2.bat

cd ..
rd uninstall

cd ..
rd rename-date

pause

