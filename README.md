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