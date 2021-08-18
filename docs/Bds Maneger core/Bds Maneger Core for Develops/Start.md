---
layout: default
title: Start Server
parent: "Bds Maneger Core for Develops"
grand_parent: "Bds Maneger core"
---

# Start function

This function can become (and becomes) the main function in which your project or even the Bds Maneger Project communicates to interact with the server, as it is where you will send commands to the server or even simple server functions such as :

- Teleports a player if you need to place the entire command:
    ```javascript
    const BdsManeger = require("@the-bds-maneger/core");
    // Start Server
    const Started_Server = BdsManeger.start();
    Started_Server.log(a => process.stdout.write(a));
    Started_Server.tp("Sirherobrine23", {x: 0, y: 128, z: 0}); // Do not do this with any player!
    ```

- Send a Hello World:
    ```javascript
    const BdsManeger = require("@the-bds-maneger/core");
    // Start Server
    const Started_Server = BdsManeger.start();
    Started_Server.log(a => process.stdout.write(a));
    Started_Server.say("Hello World");
    ```

## On function return

### uuid

* Session UUID

Bds Maneger it can manage several servers at the same time, but there is a limitation in this issue that it can only manage one server.

### command

* Send commands to server

A simple way to send any command that is not inside the return functions such as `give`.

### log

* A `callback` to the server log.

This function seems simple but behind it has a big role for server management, like checking who entered and creating an Object inside the `Player.json` array, banning a user by the server kick/ban command, even in the [on](#on) function.

### exit

* As soon as you start the server it has a status for when it stops or exits due to some platform error like missing dependencies.

This is a function to return the status of the server process.

### on

* This is a curious function, as it is the hard finger of those who enter, leave, or when the server is ready to use/play.

During the development of Bds Maneger Core (around version 1.9 ~ 1.10.1) I realized that something that most managers had was missing, which would be a function for when an event happened on the server, and this was not available in Bds Maneger Core, so between version 1.10~1.13 some very basic functions were implemented for when some player connected to the server when leaving the server. we still have main functions that we must implement within it.

### stop

* Stop the server with the /kill command.

### op and deop

* These are callback functions that can add/remove server admin permissions on the map.

### ban

* Add some player to the list of players not allowed (Soon!)

### kick

* Remove a player from the server without banning it.

### tp

* Teleport any/all player to some coordinate. (Under more functional construction)

### say

* Say