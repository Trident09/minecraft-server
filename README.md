# Minecraft Server Setup

Welcome to the Minecraft Server Setup repository! This guide will help you set up a Minecraft: Java Edition multiplayer server on your machine. Follow the instructions below to get started.

## Prerequisites

Before you begin, ensure you have the following:

- **Minecraft: Java Edition** installed on your machine.
- **Java** installed and configured on your system.
  - On **Linux** and **macOS**, this should already be set up.
  - On **Windows**, you might need to adjust the `PATH` environment variable.

## Download the Server File

1. Download the Minecraft server file from the official website or use the link below:
   - [Download minecraft_server.1.21.jar](https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar)
   
   Alternatively, you can use PaperMC for better performance and additional features:
   - [Download paper-1.21-99.jar](https://papermc.io/downloads)

## Setting Up the Server

1. Create a new directory for your Minecraft server files.
   ```sh
   mkdir MinecraftServer
   cd MinecraftServer
   ```

2. Move the downloaded `minecraft_server.1.21.jar` or `paper-1.21-99.jar` file into this directory.

3. Accept the Minecraft End User License Agreement (EULA).
   - Open a text editor and create a new file named `eula.txt`.
   - Add the following line to the file:
     ```txt
     eula=true
     ```
   - Save and close the file.

4. Run the server with the following command:
   - For the official Minecraft server:
     ```sh
     java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar nogui
     ```
   - For PaperMC:
     ```sh
     java -Xmx1024M -Xms1024M -jar paper-1.21-99.jar nogui
     ```

   - If you want to start the server with its graphical user interface (GUI), you can leave out the `nogui` part:
     - For the official Minecraft server:
       ```sh
       java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar
       ```
     - For PaperMC:
       ```sh
       java -Xmx1024M -Xms1024M -jar paper-1.21-99.jar
       ```
    - The server will start up and generate the necessary files and folders in the directory.
    - For Windows users, you can use the provided `start.bat` script to start the server with the appropriate memory settings (Provided in the repository).

5. If you wish to run the server with more memory, you can adjust the `-Xmx` and `-Xms` values in the command above. For example, to allocate 2GB of memory, you can use:
   ```sh
   java -Xmx2048M -Xms2048M -jar minecraft_server.1.21.jar nogui
   ```
   or
   ```sh
   java -Xmx2048M -Xms2048M -jar paper-1.21-99.jar nogui
   ```
    - The `-Xmx` flag sets the maximum memory allocation pool for the Java Virtual Machine (JVM).
    - The `-Xms` flag sets the initial memory allocation pool for the JVM.
    - `2048M` can be replaced with the desired amount of memory in megabytes or `2G` for gigabytes.

    - **Note:** Make sure you have enough memory available on your system to allocate to the server.
    - **Note:** The server will take some time to start up, especially the first time you run it.
    - **Note:** If you encounter any errors, make sure you have Java installed and configured correctly.
    - **Note:** If you are running the server on a remote machine, you can use tools like `screen` or `tmux` to keep the server running in the background.

6. Once the server is running, you can connect to it using the IP address `localhost` and join the server.

## Start the Server Scripts

### Linux and macOS Script (`start_server.sh`)

```sh
#!/bin/bash

# Navigate to the server directory
cd "$(dirname "$0")"

# Check if eula.txt exists
if [ ! -f eula.txt ]; then
  echo "eula=true" > eula.txt
fi

# Start the server
java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar nogui

# Get the server IP address
SERVER_IP=$(hostname -I | awk '{print $1}')

echo "Minecraft server is running at IP: $SERVER_IP"
```

### Windows Script (`start_server.bat`)

```bat
@echo off

:: Navigate to the server directory
cd /d %~dp0

:: Check if eula.txt exists
if not exist eula.txt (
    echo eula=true > eula.txt
)

:: Start the server
java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar nogui

:: Get the server IP address
for /f "tokens=2 delims=[]" %%A in ('ping -4 -n 1 %COMPUTERNAME% ^| findstr /r /c:"\[[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\]"') do set SERVER_IP=%%A

echo Minecraft server is running at IP: %SERVER_IP%
pause
```

## Additional Information

- By downloading and running the Minecraft server software, you agree to the [Minecraft End User License Agreement](https://account.mojang.com/documents/minecraft_eula) and [Privacy Policy](https://go.microsoft.com/fwlink/?LinkId=521839).
- If you want to explore other 3rd party servers, visit the [official Server Listing Site](http://aka.ms/verifiedservers). Here, you can find a variety of servers that have been reviewed and verified to follow community standards and guidelines.

## Helpful Links

- [Minecraft Server Setup Tutorial](https://minecraft.wiki/w/Tutorials/Setting_up_a_server)
- [Minecraft End User License Agreement](https://account.mojang.com/documents/minecraft_eula)
- [Privacy Policy](https://go.microsoft.com/fwlink/?LinkId=521839)
- [Verified Servers List](http://aka.ms/verifiedservers)
- [PaperMC Download](https://papermc.io/downloads)

## Contributing

If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License.

---

Happy crafting!

---

Feel free to reach out if you have any questions or need further assistance.