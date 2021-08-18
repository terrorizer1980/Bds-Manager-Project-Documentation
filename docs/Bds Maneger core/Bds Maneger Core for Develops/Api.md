---
layout: default
title: Start Bds Maneger Core API
parent: "Bds Maneger Core for Develops"
grand_parent: "Bds Maneger core"
---

# Start Bds Manager Core Rest API

This function does not return anything. it will only receive the port number and a callback for when it starts.

Example:

```javascript
// Import Bds Maneger Core
const BdsManeger = require("@the-bds-maneger/core");

// Start Bds Maneger Core Rest API
BdsManeger.api(1932, function (port){
    console.log(`Bds Maneger Core Startes in port number ${port}`)
});
```