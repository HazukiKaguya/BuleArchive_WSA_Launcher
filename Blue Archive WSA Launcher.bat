chcp 65001
C:\Users\%username%\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.nexon.bluearchive
timeout 5
:loop
tasklist /fi "windowtitle eq Blue Archive" | findstr /i WsaClient.exe > nul
if %errorlevel% equ 0 (
 timeout 15
 goto :loop
) else (
 exit
)
