# Feed_netmodel

SoftAtHome feed of Openwrt packages for netmodel components.

## Included components

Feed_netmodel includes the following components:

### Libraries

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel) - NetModel client library
- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge) - Network Model bridge client
- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4) - Network Model DHCPv4client client
- [netmodel-dhcpv6](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv6) - Network Model DHCPv6client client
- [netmodel-dslite](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dslite) - Network Model dslite client
- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet) - Network Model ethernet client
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip) - Network Model IP client
- [netmodel-iprouter](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-iprouter) - Network Model Router Advertisement client
- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical) - Network Model Logical client
- [netmodel-netdev](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-netdev) - Network Model NetDev client
- [netmodel-ppp](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ppp) - Network Model PPP client
- [netmodel-radio](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-radio) - Network Model radio client
- [netmodel-ssid](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ssid) - Network Model ssid client
- [netmodel-vlan](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-vlan) - Network Model vlan client

### Modules

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel) - Module to populate NetModel

### Plugins

- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients) - Network Model clients plugin
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel) - Network Model plugin

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
