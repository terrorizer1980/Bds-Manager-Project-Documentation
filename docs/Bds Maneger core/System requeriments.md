---
layout: default
title: System requirements
parent: Bds Maneger core
---

# Bds Maneger System Requeriments

O Bds Maneger core necessita de duas coisas para funcionar de forma que tudo não falhe:

  1. [`curl/wget` command](../CurlWget/)

  2. NodeJS or electron with the `nodeIntegration: true`, `sandbox: false` and `enableRemoteModule: true`


# Minecraft Java server

If you have not installed Java here we have some commands and sites to download Java SE/JDK

## Windows

[Oracle Oficial download pages](https://www.java.com/download/help/windows_manual_download.html)

## MacOS

[Oracle JDK](https://www.java.com/download/help/mac_install.html) and [Java SE](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)

## Linux

Ubuntu, Debian and others that are based on debian: `# apt install openjdk-11-jdk-headless openjdk-11-jdk openjdk-11-jre-headless openjdk-11-jre`.

Suse, OpenSUSE, Red Hat, CentOS, Fedora, Oracle Linux: [From Oracle Site](https://www.java.com/en/download/help/linux_install.html#rpm)

------------
# Notes

## MacOS

Use the docker image if you want to use the bedrock server, as Mojang has not yet released the files from the Minecraft Bedrock Server for MacOS (x64 and arm64)

No information has been tested on M1 processors yet, please add to this documentation

## Bedrock

The Minecraft Bedrock Server for now, only supports Linux and Windows Operating Systems with AMD64 (x64) architecture.

We have a docker image to be used on all platforms, even in the ARM64 architecture, but if you want to use it on architectures other than AMD64, I'm sorry to inform you more you have a chance to lose patience because you will be emulating an architecture.

### benchmark in ARM64 architectures

* Respberry PI 4B 2GB, 128Gb SSD: 20 minutes to start the server

    - There were several timeouts and the raspberry pi became very hot. It is recommended to add a mini cooler to cool the plate.

* Linux Deploy:
    * Motorola Moto G7 plus with root:
        - It was well tested in chroot with Linux deploy, the device heated up just being necessary to restart the device several times

        - 35 minutes to start the server

* AWS ec2 arm64 
    * 2 CPU, 1GB RAM, 30GB ssd:
        - Start server with ~3 minutes

        - Connection to the server may take more than 10 minutes
* Oracle Cloud Computing Instance Aarch64 (Arm64)
    * 8 CPU, 8GB RAM, 52GB block storage (Docker Image)
        - Started the server in less than 45 seconds the Minecraft Bedrock server.

        - No time outs when connecting.

        - some very small lags when you break the blocks.

so that we have support for Minecraft Bedrock Server (Dedicated server) on arm64 vote on this [mojang feedback page](https://feedback.minecraft.net/hc/en-us/community/posts/360022601432-Dedicated-Servers-for-ARM-Devices).

## Java

The Bds Manger core is still implementing the java server, and there may be several errors, most architectures are supported.
