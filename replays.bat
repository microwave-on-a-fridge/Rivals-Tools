@echo off
:start
set driveLetter=
set /p driveLetter=Welcome to the Rivals of Aether replay extraction tool! What drive letter would you like the replays to be copied to?
echo \n
if not '%unverum%'=='' set unverum=%unverum:~0,1%
xcopy /s /q "%LOCALAPPDATA%\RivalsofAether\replays" "%driveLetter%:\Rivals of Aether Replays\"
echo Extraction complete.
@pause
exit