@echo off

:: Navigate to the server directory
cd /d %~dp0

:: Get the public IP address using curl
for /f "tokens=*" %%A in ('curl -s ifconfig.co') do set PUBLIC_IP=%%A

:: Get the local IP address
for /f "tokens=2 delims=[]" %%A in ('ping -4 -n 1 %COMPUTERNAME% ^| findstr /r /c:"\[[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\]"') do set LOCAL_IP=%%A

:: Print the public and local IP addresses
echo Minecraft server is running at public IP: %PUBLIC_IP%
echo Minecraft server is running at local IP: %LOCAL_IP%

:: Check if eula.txt exists
if not exist eula.txt (
    echo eula=true > eula.txt
)

:: Start the server
java -Xmx1024M -Xms1024M -jar paper-1.21-99.jar nogui

pause
