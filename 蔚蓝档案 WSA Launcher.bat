chcp 936
C:\Users\%username%\AppData\Local\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.RoamingStar.BlueArchive
timeout 5
set ba=ÎµÀ¶µµ°¸
:loop
tasklist /fi "windowtitle eq %ba%" | findstr /i WsaClient.exe > nul
if %errorlevel% equ 0 (
 timeout 15
 goto :loop
) else (
 exit
)