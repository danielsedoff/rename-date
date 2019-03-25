@echo off

for /F "skip=1 delims=" %%F in ('
    wmic PATH Win32_LocalTime GET Day^,Month^,Year /FORMAT:TABLE
') do (
    for /F "tokens=1-3" %%L in ("%%F") do (
        set CurrDay=0%%L
        set CurrMonth=0%%M
        set CurrYear=%%N
    )
)

set CurrDay=%CurrDay:~-2%
set CurrMonth=%CurrMonth:~-2%

For %%A in (%1) do (
  set nameonly=%%~nxA)

rename %1 "%CurrYear%%CurrMonth%%CurrDay% %nameonly%"

