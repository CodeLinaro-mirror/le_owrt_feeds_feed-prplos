# Feed_tr69

SoftAtHome feed of Openwrt packages for TR069 component.

## Included components

Feed_tr69 includes the following components:

### Libraries

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine) - libraries to define and implement the ACS RPCs methods and data parser

### Plugins

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager) - TR069 Manager

## How to add feed_tr69 to your OpenWrt build

At the root of your OpenWrt tree, add the following to your `feeds.conf` file:
Add the packages to your OpenWrt instance with the following commands:
```sh
./scripts/feeds update feed_tr69 #retrieve the feed from service/update to latest
./scripts/feeds install -p feed_tr69 #make all of the feed packages available to the build
```
