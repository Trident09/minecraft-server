#!/bin/bash

# Navigate to the server directory
cd "$(dirname "$0")"

# Check if eula.txt exists
if [ ! -f eula.txt ]; then
  echo "eula=true" > eula.txt
fi

# Start the server
java -Xmx1024M -Xms1024M -jar paper-1.21-99.jar nogui

# Get the server IP address
SERVER_IP=$(hostname -I | awk '{print $1}')

echo "Minecraft server is running at IP: $SERVER_IP"
