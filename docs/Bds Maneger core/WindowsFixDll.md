---
layout: default
title: Windows Fix DLL
parent: Bds Maneger core
---

[msc++]: https://aka.ms/vs/16/release/vc_redist.x64.exe
[chakra]: https://github.com/The-Bds-Maneger/external_files/raw/main/Windows/dll/Chakra.dll

* These Fixes are for X64 architectures (Amd64) any other architecture will not work.

# Windows Server

Windows (Server) Core does not come with some dlls that make Bedrock and other servers unable to start the server.

Download the following files:

- C++ 
    - [Microsoft Visual Studio C++][msc++]

- Independent DLLs

    * These dlls should be placed inside the `C:\Windows\System32` folder
    * If it doesn't work, create an issue or a discursion in the [The Bds Maneger Core](https://github.com/The-Bds-Maneger/Bds-Maneger-Core) repository

        - [Chakra.Dll X64][chakra]

# Windows 8.1, 8, 7

- Windows 7 will not work besides being very dangerous to use in this edition of Windows.

- Windows 8 and 8.1 are not recommended as all tests are done on Windows 10.
