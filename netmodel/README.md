# Feed_netmodel

SoftAtHome feed of Openwrt packages for netmodel components.

## Included components

Feed_netmodel includes the following components:

### Libraries

- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet) - Network Model ethernet client
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip) - Network Model IP client

### Modules

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel) - Module to populate NetModel

## How to add feed_netmodel to your OpenWrt build

At the root of your OpenWrt tree, add the following to your `feeds.conf` file:

```sh
src-git feed_netmodel git@gitlab.com:soft.at.home/buildsystems/openwrt/feed_netmodel.git;main
```

Add the packages to your OpenWrt instance with the following commands:
```sh
./scripts/feeds update feed_netmodel #retrieve the feed from service/update to latest
./scripts/feeds install -p feed_netmodel #make all of the feed packages available to the build
```
