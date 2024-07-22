#!/bin/bash

# Navigate to the server directory
cd "$(dirname "$0")"

# Get the public IP address
SERVER_IP=$(curl -s ifconfig.co)

echo "Minecraft server is running at IP: $SERVER_IP"

# Get the server IP address
SERVER_IP_LOC=$(hostname -I | awk '{print $1}')

echo "Minecraft server is running at IP: $SERVER_IP_LOC"

# Check if eula.txt exists
if [ ! -f eula.txt ]; then
  echo "eula=true" > eula.txt
fi

# Start the server
java -Xmx1G -Xms4G -jar paper-1.21-99.jar nogui
