---
layout: default
title: Register Bds Maneger Rest API Token
parent: "Bds Maneger Core for Develops"
grand_parent: "Bds Maneger core"
---

Bds Maneger has several supported servers and to switch between platforms (Servers) within Bds Maneger Core this function should be the most important.

example:

```javascript
// Import Bds Maneger Core
const BdsManeger = require("@the-bds-maneger/core");

// Change to Bedrock Server
try {
    BdsManeger.change_platform("bedrock");
} catch (err) {
    console.log("Error in change Platform, Error:", err);
}
```