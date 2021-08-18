---
layout: default
title: Register Bds Maneger Rest API Token
parent: "Bds Maneger Core for Develops"
grand_parent: "Bds Maneger core"
---

# Token Register function

If you want to use the Bds Maneger API, some requests will need the token that MUST be registered by the Bds Maneger Core because these tokens will be validated by the Bds Maneger core Regularly.

example:

```javascript
// Import Bds Maneger Core
const BdsManeger = require("@the-bds-maneger/core");

// Create Token
const Token = BdsManeger.token_register();

// Show token
console.log("Bds API Token:", Token);
```