---
layout: default
title: Download Server and Setup Basic Configuration to Server
parent: "Bds Maneger Core for Develops"
grand_parent: "Bds Maneger core"
---

# First of all you must use this option!

Like Bds Maneger it is in an automated manager, and it is always checking something. more something more important is checking if there is some server software available in the server folder of Bds Maneger Core.

# Using the function

* Version: String
* force_install: Boolean
* Callback: Function

## Example

1. With Callback:

```js
// Import Bds Maneger Core
const BdsManeger = require("@the-bds-maneger/core");

// Change Platform to Java platform
BdsManeger.change_platform("java");

// Download Server Latest Server to Java
BdsManeger.download(
    true, // Install Latest Version
    false, // Force replace files
    function (err) { // Callback Function
        if (err) {
            console.log("Error to Install Server");
            console.info("Error:", err);
            return process.exit(1);
        }

        // Set Config
        BdsManeger.set_config({
            world: "is test",
            description: "Hello is description from docs.",
        });

        // From post install server start
        const ServerStartes = BdsManeger.start();
        ServerStartes.log(a => process.stdout.write(a));
        ServerStartes.on("connect", function (Player){
            console.log(
                "**************************\n\n",
                "Player:", Player.Player, "\n",
                "Action:", Player.Action,
            );
        });
    }
);
```

2. Without callback:

```js
// Import Bds Maneger Core
const BdsManeger = require("@the-bds-maneger/core");

(async () => {
    try {
        await BdsManeger.download(
            true, // Install Latest Version
            false // Force replace files
        );

        // From post install server start
        const ServerStartes = BdsManeger.start();
        ServerStartes.log(a => process.stdout.write(a));
        ServerStartes.on("connect", function (Player){
            console.log(
                "**************************\n\n",
                "Player:", Player.Player, "\n",
                "Action:", Player.Action,
            );
        });
    } catch (err) {
        console.info("Error:", err)
    }
})();
```