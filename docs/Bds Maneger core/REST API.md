---
layout: default
title: The Rest API
parent: Bds Maneger core
---

# API Rest

Bds Maneger Core has a REST Api that interacts with the entire server (end to end - [NEXTSTEP](https://wikipedia.org/wiki/NeXTSTEP){:target="_blank"}).

### get server, system and bds maneger core info:

["http://localhost:1932/bds/info"](http://localhost:1932/bds/info) (HTTP GET)

Alway Response:
```json
{
  "server": {
      "platform": "String",
      "world_name": "String",
      "running": "Boolean",
      "port": "String",
      "port6": "String",
      "max_players": "String",
      "whitelist": "String"
  },
  "sys": {
      "arch": "String",
      "system": "String",
      "Kernel": "String",
      "IS_CLI": "Boolean",
      "IS_DOCKER": "Boolean",
      "IS_NPX": "Boolean",
      "QEMU_STATIC": "Boolean"
  },
  "bds_maneger_core": {
      "version": "String",
      "server_versions": "Object",
  }
}
```

### Server download

["http://localhost:1932/bds/download"](http://localhost:1932/bds/download) (HTTP POST)

Body
  - version:
    - latest
    - StringVersion
  - token: Bds Maneger Token

response 200:
  - Status:
    - true
    - false

### Upload World (Alpha)

["http://localhost:1932/bds/upload"](http://localhost:1932/bds/upload) (HTTP POST)

Body
  - version
    - latest
    - StringVersion
  - token: Bds Maneger Token

Response 200:
  - Status
    - true
    - false

### Download backup world and configs

["http://localhost:1932/bds/backup"](http://localhost:1932/bds/backup) (HTTP GET)

- Query:
  - token: Bds Maneger Token

Response 200
  - Zip file download.

Response 400
  - Error: String

### Log

["http://localhost:1932/log"](http://localhost:1932/log) (HTTP GET)

Query:
  - format:
    * JSON (Array) - Default
    * HTML `<div class="BdsCoreLog"><p>LOG_LINE</p></div>`