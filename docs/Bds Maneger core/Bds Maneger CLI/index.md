---
layout: default
title: Bds Maneger CLI
parent: Bds Maneger core
---

Bds Maneger Core has included in its package a CLI for managing the Bds Maneger Core and its servers available for your current system.

# Install Bds Maneger Core

## global

run `npm i -g @the-bds-maneger/core@latest`. ***Linux/MacOS required sudo to install***

## run without install

run: `npx --package=@the-bds-maneger/core@latest bds_maneger`. ***Run With Options***

# Options

If you didn't understand the CLI option here is a quick example:

* Install Server: 
    
    We use the option: `-d [Boolean|String]`, If no version is already informed, the last possible version will be installed for the platform and system available.

* Switching between platforms (Servers):

    We use the option: `-p [String]`, will switch between platforms supported by Bds Maneger Core

* Start the Server:

    We use the option: `-s`, your server will be started right after or after installing the server