---
layout: default
title: System requirements
parent: Bds Maneger core
---

# Bds Maneger System Requeriments

O Bds Maneger core necessita de duas coisas para funcionar de forma que tudo não falhe:

  1. NodeJS or electron with the `nodeIntegration: true`, `sandbox: false` and `enableRemoteModule: true`


# Minecraft Java server

If you have not installed Java here we have some commands and sites to download Java SE/JDK

## Windows And MacOS

[Oracle Oficial download pages](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html)

## Linux

Ubuntu, Debian and others that are based on debian: `# apt install openjdk-16-jdk-headless openjdk-16-jdk openjdk-16-jre-headless openjdk-16-jre`.

Suse, OpenSUSE, Red Hat, CentOS, Fedora, Oracle Linux: [From Oracle Site](https://www.oracle.com/java/technologies/javase-jdk16-downloads.html)

------------
# Notes

## MacOS

Use the docker image if you want to use the bedrock server, as Mojang has not yet released the files from the Minecraft Bedrock Server for MacOS (x64 and arm64)

No information has been tested on M1 processors yet, please add to this documentation

## Bedrock

The Minecraft Bedrock Server for now, only supports Linux and Windows Operating Systems with AMD64 (x64) architecture.

We have a docker image to be used on all platforms, even in the ARM64 architecture, but if you want to use it on architectures other than AMD64, I'm sorry to inform you more you have a chance to lose patience because you will be emulating an architecture.

## Java

The Bds Manger core is still implementing the java server, and there may be several errors, most architectures are supported.
