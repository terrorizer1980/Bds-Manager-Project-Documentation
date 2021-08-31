---
layout: default
title: Minecraft Bedrock benchmark in Aarch64 (arm64)
grand_parent: Bds Maneger core
parent: System requirements
---

# System ARM64/Aarch64

## Notes

All tests were done on the docker, this is not to modify the host and we have problems and if you need to reuse the vm / device

so that we have support for Minecraft Bedrock Server (Dedicated server) on arm64 vote on this [mojang feedback page](https://feedback.minecraft.net/hc/en-us/community/posts/360022601432-Dedicated-Servers-for-ARM-Devices).

## Respberry PI

* PI 4B 2GB, 128Gb SSD: 20 minutes to start the server

    - There were several timeouts and the raspberry pi became very hot. It is recommended to add a mini cooler to cool the plate.

## Linux Deploy:

* Motorola Moto G7 plus with root:
    - It was well tested in chroot with Linux deploy, the device heated up just being necessary to restart the device several times
    - 35 minutes to start the server

## Amazon AWS EC2 instances Graviton

* 2 CPU, 1GB RAM, 30GB ssd (t4g.nano)
    - Start server with ~3 minutes

* 4 CPU, 16GB RAM, 30GB ssd (t4g.xlarge)
    - Started the server in about 1:30 minutes
        * The server stopped 6 ~ seconds late

    - Commands take a while to execute between 5 to 14 seconds

    - Without time outs, connecting with just one player took 1:35 minutes on the third try

    - notes:
        - Map generation is faster but there is a large CPU consumption, leaving only one player to play any other attempt can overload the entire instance.

        - At a time considered when breaking blocks or opening the chests and any other type will have a lag.

* 4 CPU, 8Gb RAM, 30Gb ssd (a1.xlarge)
    - started with 29:65 seconds

    - There were 1 time outs, connection to the server took 1:20 minutes

    - quite lag is perceptive

* 8 CPU, 16Gb RAM, 30Gb ssd (a1.xlarge)
    - started with 27.05 seconds

    - without time outs, server connection with 32:38 seconds

    - We had a small minimalist lags but it was possible to play with more than one player

## Oracle Cloud Computing Instance

* 8 CPU, 8GB RAM, 52GB block storage (VM.Standard.A1.Flex)
    - Started the server in less than 45 seconds the Minecraft Bedrock server.

    - No time outs when connecting.

    - some very small lags when you break the blocks.

* 16 CPU, 16GB RAM, 52GB block storage (VM.Standard.A1.Flex)
    - started the server at 16:01 seconds

    - without time outs, player connected to the server with 13:38 seconds

    - Only lags were downloaded when loading new chunks or with more than 610 entities in the same place