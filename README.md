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

## Setting Up the Server

1. Create a new directory for your Minecraft server files.
   ```sh
   mkdir MinecraftServer
   cd MinecraftServer
   ```

2. Move the downloaded `minecraft_server.1.21.jar` file into this directory.

3. Accept the Minecraft End User License Agreement (EULA).
   - Open a text editor and create a new file named `eula.txt`.
   - Add the following line to the file:
     ```txt
     eula=true
     ```
   - Save and close the file.

4. Run the server with the following command:
   ```sh
   java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar nogui
   ```
   - If you want to start the server with its graphical user interface (GUI), you can leave out the `nogui` part:
     ```sh
     java -Xmx1024M -Xms1024M -jar minecraft_server.1.21.jar
     ```

## Additional Information

- By downloading and running the Minecraft server software, you agree to the [Minecraft End User License Agreement](https://account.mojang.com/documents/minecraft_eula) and [Privacy Policy](https://go.microsoft.com/fwlink/?LinkId=521839).
- If you want to explore other 3rd party servers, visit the [official Server Listing Site](http://aka.ms/verifiedservers). Here, you can find a variety of servers that have been reviewed and verified to follow community standards and guidelines.

## Helpful Links

- [Minecraft Server Setup Tutorial](https://minecraft.wiki/w/Tutorials/Setting_up_a_server)
- [Minecraft End User License Agreement](https://account.mojang.com/documents/minecraft_eula)
- [Privacy Policy](https://go.microsoft.com/fwlink/?LinkId=521839)
- [Verified Servers List](http://aka.ms/verifiedservers)

## Contributing

If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License.

---

Happy crafting!

---

Feel free to reach out if you have any questions or need further assistance.