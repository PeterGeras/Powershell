
$work_toggle = Read-Host -Prompt "`nRun startup programs for work (y/n)"

if ($work_toggle -ne "y") {
	stop-process -Id $PID # Closes self
}

# FIREFOX # Batch file that opens windows in order and with tabs
Start-Process -FilePath "D:\Programming\PowerShell\Windows startup programs\trunk\Firefox windows.bat" -WindowStyle Minimized
Start-Sleep -Second 5

# CHROME #
Start-Process -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
Start-Sleep -Second 3

# EXPLORER # ii is short for Invoke-Item
ii .
Start-Sleep -Second 3

# OUTLOOK #
Start-Process -FilePath "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.exe"
Start-Sleep -Second 5

# PYCHARM # -Verb RunAs = administrator
Start-Process -FilePath "C:\Program Files\PyCharm\bin\pycharm64.exe" -Verb RunAs
Start-Sleep -Second 5

# VISUAL STUDIO # -Verb RunAs = administrator
Start-Process -FilePath "C:\Program Files (x86)\Visual Studio\Common7\IDE\devenv.exe" -Verb RunAs
Start-Sleep -Second 5

# MREMOTENG #
Start-Process -FilePath "C:\Program Files (x86)\mRemoteNG\mRemoteNG.exe"
Start-Sleep -Second 3

# MESSENGER #
# https://answers.microsoft.com/en-us/windows/forum/all/how-to-make-a-short-cut-for-facebook-to-desktop/e5e1fca8-2581-4f7d-98eb-c7276d202ebe
Start-Process -FilePath "C:\Users\Peter\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Messenger.lnk"
Start-Sleep -Second 5

# WHATSAPP #
Start-Process -FilePath "C:\Users\Peter\AppData\Local\WhatsApp\WhatsApp.exe" -WindowStyle Maximized
Start-Sleep -Second 3

# MICROSOFT TEAMS #
Start-Process -FilePath "C:\Users\Peter\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Microsoft Teams.lnk"
Start-Sleep -Second 5

# SKYPE #
Start-Process -FilePath "C:\Program Files\Microsoft Office\root\Office16\lync.exe"
Start-Sleep -Second 5

# EXCEL #
Start-Process -FilePath "C:\Program Files\Microsoft Office\root\Office16\EXCEL.exe"
Start-Sleep -Second 5

# NOTEPAD++ #
Start-Process -FilePath "C:\Program Files\Notepad++\notepad++.exe"
Start-Sleep -Second 3

# SPOTIFY #
Start-Process -FilePath "C:\Users\Peter\AppData\Roaming\Spotify\Spotify.exe" -WindowStyle Maximized
Start-Sleep -Second 3


Read-Host -Prompt "`nPress any key to exit"
stop-process -Id $PID # Closes self
