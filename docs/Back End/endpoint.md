---
layout: default
title: GUI support on different systems
parent: Back End
---

# Very important

As this is an http request everyone can use these endpoints but we limit it to one (1) temporary domain for each ip and MAC address of the machine.

# Endpoints

## /Gethost

- Body
    - mac: MAC address of the machine
    - ip: Public IP address of the machine.

Response 200:
```JSON
{
    "user": {
        "ip": "String",
        "mac": "String",
        "host": {
            "host": "String",
            "id": "String: CloudFlare ID"
        },
        "ID": "UUID",
        "CreateAt": "Date"
    }
}
```

Response 400:
```JSON
{
    "error": "Unable to get your host",
    "error": "This mac address is already in use, for the project before ordering another",
    "error": "This MAC is not valid"
}
```
## /DeleteHost

- Body
    - ID: Back End Request ID

Response 200:
```JSON
{
    "status": true
}
```
Response 400:
```JSON
{
    "error": "User ID no exists",
    "error": "Error deleting domain"
}
```