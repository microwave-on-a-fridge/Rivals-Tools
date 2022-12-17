@echo off 
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Welcome to the Rivals of Aether Save Data Extraction Tool! What drive letter would you like your saves to be copied to?', 'Rivals of Aether Save Data Extraction Tool')}" > %TEMP%\out.tmp
set /p driveLetter=<%TEMP%\out.tmp
xcopy /s /q "%LOCALAPPDATA%\RivalsofAether\saves" "%driveLetter%:\Rivals of Aether Save Data\"
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Extraction successful. Saves have been copied to %driveLetter%:\Rivals of Aether Save Data\', 'Extraction Successful', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
powershell -Command %msgBoxArgs%