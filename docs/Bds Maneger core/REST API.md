---
layout: default
title: The Rest API
parent: Bds Maneger core
---

# API Rest

Bds Maneger Core has a REST Api that interacts with the entire server (end to end - [NEXTSTEP](https://wikipedia.org/wiki/NeXTSTEP){:target="_blank"}).

### get server, system and bds maneger core info:

["http://localhost:1932/info"](http://localhost:1932/info) (HTTP GET)

return:

```json
{
  "version": "1.9.1.2",
  "server": {
    "platform": "bedrock",
    "world_name": "Bedrock level",
    "running": true,
    "port": 19132,
    "port6": 19133,
    "max_players": 10,
    "whitelist": false
  },
  "sys": {
    "arch": "x64",
    "system": "linux",
    "Kernel": "Generic Kernel x64: Intel(R) Core(TM)2 Duo CPU     E7500  @ 2.93GHz",
    "IS_CLI": true,
    "IS_DOCKER": false,
    "IS_NPX": false,
    "QEMU_STATIC": {
      "x64": true,
      "x86": true
    }
  },
  "bds_maneger_core": {
    "server_versions": {
      "bedrock": "1.16.221.01",
      "java": null,
      "pocketmine": null,
      "jsprismarine": "latest"
    },
    "server_ban": [
      "Steve",
      "Alex",
      "steve",
      "alex"
    ],
    "telegram_admin": [
      "all_users"
    ]
  }
}
```

### Download backup world and configs

["http://localhost:1932/download_backup"](http://localhost:1932/download_backup) (HTTP GET)

Require Parameters: ?token=StringToken

return: Zip file download.

### Bds Basic Services

["http://localhost:1932/service"](http://localhost:1932/service) (HTTP GET/POST)

Require body: command=[stop, start, restart], token=StringToken

return: Status command

### Server download

["http://localhost:1932/bds_download"](http://localhost:1932/bds_download) (HTTP POST)

Require body: version=[latest, StringVersion], token=StringToken

return: Status

### Upload World (Alpha)

["http://localhost:1932/upload_world"](http://localhost:1932/upload_world) (HTTP POST)

Require body: version=[latest, StringVersion], token=StringToken

return: Status
