---
layout: default
title: Backup Server and Bds Maneger Core Config
parent: "Bds Maneger Core for Develops"
grand_parent: "Bds Maneger core"
---

# Backup function

This function creates a zip file with a copy of the server maps and settings and being written into the Backup folder which is normally inside the `bds_dir`.

This function will return an `Array` with the Zip `Buffer`, File Name, and the path of the original file.

example:

```javascript
// Import Bds Maneger Core
const BdsManeger = require("@the-bds-maneger/core");

// Create Backup
const ReturnBackup = BdsManeger.backup();

// Show in console.log
console.log("File name:", ReturnBackup.file_name, "Path:", ReturnBackup.file_path)
```