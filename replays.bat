@echo off 
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Welcome to the Rivals of Aether Replay Extraction Tool! What drive letter would you like your replays to be copied to?', 'Rivals of Aether Replay Extraction Tool')}" > %TEMP%\out.tmp
set /p driveLetter=<%TEMP%\out.tmp
xcopy /s /q "%LOCALAPPDATA%\RivalsofAether\replays" "%driveLetter%:\Rivals of Aether Replays\"
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Extraction successful. Replays have been copied to %driveLetter%:\Rivals of Aether Replays\', 'Extraction Successful', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
powershell -Command %msgBoxArgs%