@echo off

:: Navigate to the server directory
cd /d %~dp0

:: Check if eula.txt exists
if not exist eula.txt (
    echo eula=true > eula.txt
)

:: Start the server
java -Xmx1024M -Xms1024M -jar paper-1.21-99.jar nogui

:: Get the server IP address
for /f "tokens=2 delims=[]" %%A in ('ping -4 -n 1 %COMPUTERNAME% ^| findstr /r /c:"\[[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\]"') do set SERVER_IP=%%A

echo Minecraft server is running at IP: %SERVER_IP%
pause
