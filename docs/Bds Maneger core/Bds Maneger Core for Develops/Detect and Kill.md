---
layout: default
title: Detect and Kill Server
parent: "Bds Maneger Core for Develops"
grand_parent: Bds Maneger core
---

# A simple way to kill running servers

This function is nothing special besides killing your server very radically. Example:

```javascript
const BdsManeger = require("@the-bds-maneger/core");
if (BdsManeger.detect()) BdsManeger.kill();
```