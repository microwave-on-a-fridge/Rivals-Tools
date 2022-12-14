@echo off
:start
set driveLetter=
set /p driveLetter=Welcome to the Rivals of Aether save data extraction tool! What drive letter would you like your save data to be copied to?
echo \n
xcopy /s /q "%LOCALAPPDATA%\RivalsofAether\saves" "%driveLetter%:\Rivals of Aether Save Data\"
echo Extraction complete.
@pause
exit