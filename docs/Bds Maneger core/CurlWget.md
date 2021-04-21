---
layout: default
title: "CurlWget"
parent: "Bds Maneger core"
---

Bds Manager Core will need cURL for small requests for version files faster for many other things within Bds Maneger Core.

If not installed, Bds Maneger Core will fail when trying to install or update the Packages.

# cURL

## Windows 10

In Windows 10 after 1803 already comes with curl installed. check if your system is updated in the latest version.

## Windows 7, 8, 8.1 and 10 (before 1709)

### with package manager

- [Chocolatey:](https://chocolatey.org/) `choco install curl`
- [MSYS2:](https://www.msys2.org/) `pacman -S curl`
- [Scoop:](https://scoop.sh/) `scoop install curl`

### Manual download

Download some of the files from the [cURL](https://curl.se/dlwiz/?type=bin&os=Win64&flav=-) website and add to `C:\Windows\System32` or `C:\Windows`

## Linux

- Ubuntu/Debian: `sudo apt install -y curl`

- RHEL/CentOS/Fedora: `sudo yum install curl`

- ArchLinux: `pacman -Sy curl && pacman -Qi curl`

## MacOS

cURL is already pre-installed on MacOS, if it is not, just install it with [homebrew](https://brew.sh/) (`brew install curl`).

-----

# Wget

## Linux

- Ubuntu/Debian: `sudo apt install -y wget`

- RHEL/CentOS/Fedora: `sudo yum install wget`

- ArchLinux: `pacman -Sy wget && pacman -Qi wget`

## MacOS

wget is already pre-installed on MacOS, if it is not, just install it with [homebrew](https://brew.sh/) (`brew install wget`).