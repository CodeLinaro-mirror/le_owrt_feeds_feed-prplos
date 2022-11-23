# Feed_usp

SoftAtHome feed of Openwrt packages for usp components.

## Included components

Feed_usp includes the following components:

### Applications

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent) - LocalAgent data model as specified by TR-181
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint) - Mini USP agent or controller
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent) - USP agent as specified by TR-369

### Plugins

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt) - TR-181 compatible MQTT client

### Libraries

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp) - libimtp is a library which provides functionality to set up a connection between two internal USP endpoints using a unix domain socket.
- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp) - libusp can be used for converting USP protobuf messages to ambiorix variants and vice versa.
- [libuspi](https://gitlab.com/soft.at.home/usp/libraries/libuspi) - libuspi is a common library for setting up and managing IMTP connections
- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf) - This library generates C code from .proto files provided by bbf


## How to add feed_usp to your OpenWrt build

At the root of your OpenWrt tree, add the following to your `feeds.conf` file:

```sh
src-git feed_usp git@gitlab.com:soft.at.home/buildsystems/openwrt/feed_usp.git;main
```

Add the packages to your OpenWrt instance with the following commands:
```sh
./scripts/feeds update feed_usp #retrieve the feed from service/update to latest
./scripts/feeds install -p feed_usp #make all of the feed packages available to the build
```
