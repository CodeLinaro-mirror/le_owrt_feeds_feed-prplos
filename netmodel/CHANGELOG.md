# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## Release v2.2.4 - 2022-04-06(10:04:19 +0000)

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Change query updated event to match the event sent by NeMo

### Changes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Change query updated event to match the event sent by NeMo

## Release v2.2.3 - 2022-04-05(10:30:45 +0000)

### Fixes

- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): The loopback interface must be marked with the netdev flag.

### Changes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [GetDebugInformation] Add data model debuginfo in component services
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): The loopback interface must be marked with the netdev flag.

## Release v2.2.2 - 2022-03-28(16:44:56 +0000)

### Fixes

- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): The loopback interface must be marked with the netdev flag.

## Release v2.2.1 - 2022-03-25(21:25:28 +0000)

### Fixes

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): [NetModel] Move populate code back to mod_netmodel

## Release v2.2.0 - 2022-03-24(14:08:45 +0000)

### New

- [netmodel-iprouter](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-iprouter): Component added

### Changes

- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [GetDebugInformation] Add data model debuginfo in component services

## Release v2.1.1 - 2022-03-18(10:05:40 +0000)

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Use amxb_be_who_has instead of own implementation

## Release v2.1.0 - 2022-03-17(15:30:32 +0000)

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): implement iprouter client and iprouter mib
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): implement iprouter client and iprouter mib

## Release v2.0.4 - 2022-03-14(17:29:54 +0000)

### Other

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Add doxygen generation

## Release v2.0.3 - 2022-03-10(13:56:38 +0000)

### Other

- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [NetModel-clients] Add unit tests

## Release v2.0.2 - 2022-03-03(17:44:55 +0000)

### Fixes

- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): [NetModel-bridge] The netdev flag should not be cleared if the Port is not a VLAN

## Release v2.0.1 - 2022-03-01(16:06:43 +0000)

### Other

- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): [netmodel][tr181-bridge] Bridge Management ports must have the netdev flag set

## Release v2.0.0 - 2022-02-28(14:17:02 +0000)

### Breaking

- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): Use amxm to start/stop syncing netmodel clients
- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4): Use amxm to start/stop syncing netmodel clients
- [netmodel-dhcpv6](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv6): Use amxm to start/stop syncing netmodel clients
- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): Use amxm to start/stop syncing netmodel clients
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): Use amxm to start/stop syncing netmodel clients
- [netmodel-netdev](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-netdev): Use amxm to start/stop syncing netmodel clients
- [netmodel-vlan](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-vlan): Use amxm to start/stop syncing netmodel clients

### New

- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): Component added

### Fixes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Create separate plugin to run NetModel clients

## Release v1.5.1 - 2022-02-25(13:26:19 +0000)

### Other

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Enable core dumps by default

## Release v1.5.0 - 2022-02-22(15:39:26 +0000)

### New

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Add getMibs API
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Add getMibs API

## Release v1.4.0 - 2022-02-18(16:44:39 +0000)

### New

- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): The Upstream parameter must be mapped to the upstream netmodel flag

### Fixes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Typo in regex for dhcpOption change events
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Crash when opening the same getDHCPOption query twice
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Bridging instances are no longer added to NetModel
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): only the NetDev client should synchronize NetDevName

### Changes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Disable datamodel persistency

## Release v1.3.0 - 2022-02-14(20:55:00 +0000)

### New

- [netmodel-netdev](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-netdev): Component added

### Fixes

- [netmodel-vlan](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-vlan): only the NetDev client should synchronize NetDevName
- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): only the NetDev client should synchronize NetDevName

## Release v1.2.0 - 2022-02-10(09:12:28 +0000)

### New

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel] Support getDHCPOption() queries
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): create netmodel client for tr181-logical
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): implement netdev client and netdev mib
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [netmodel] Support getDHCPOption() queries

### Fixes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Ensure that the private intf_t structure is created when needed

## Release v1.1.0 - 2022-02-04(15:19:54 +0000)

### New

- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): mib_ip should set flags "ipv4-up" and "ipv6-up"

## Release v1.0.0 - 2022-02-03(20:09:20 +0000)

### Breaking

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): wrong mib can be unsubscribed when netmodel clients share a netmodel interface

### New

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Integrate support for bridging in NetModel
- [netmodel-vlan](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-vlan): Component added
- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): Component added
- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): Integrate support for bridging in NetModel

### Fixes

- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): wrong mib can be unsubscribed when netmodel clients share a netmodel interface
- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): wrong mib can be unsubscribed when netmodel clients share a netmodel interface
- [netmodel-dhcpv6](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv6): wrong mib can be unsubscribed when netmodel clients share a netmodel interface
- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4): wrong mib can be unsubscribed when netmodel clients share a netmodel interface

### Changes

- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): expand libnetmodel for mibs/netmodel-clients
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Integrate support for bridging in NetModel

## Release v0.7.0 - 2022-01-30(15:31:59 +0000)

### New

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Component added
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Component added

## Release v0.6.1 - 2022-01-21(19:21:46 +0000)

### Changes

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): IP client startup does not always work properly
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): expand libnetmodel for mibs/netmodel-clients
- [netmodel-dhcpv6](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv6): expand libnetmodel for mibs/netmodel-clients
- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4): expand libnetmodel for mibs/netmodel-clients

## Release v0.6.0 - 2022-01-11(20:13:28 +0000)

### New

- [netmodel-dhcpv6](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv6): Component added

## Release v0.5.0 - 2022-01-11(12:37:00 +0000)

### New

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Create DHCPv4 Client mapping in NetModel
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): implement ip client and ip mib
- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4): Create DHCPv4 Client mapping in NetModel

## Release v0.4.0 - 2022-01-07(17:10:33 +0000)

### New

- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4): Component added

### Fixes

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Filtered parameters do not always work when a plugin starts before NetModel
- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): create mib_ethernet

## Release v0.3.0 - 2021-12-22(19:31:15 +0000)

### New

- [netmodel-ethernet](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ethernet): Component added

### Changes

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Update parameters if NetModel Intf already exists

## Release v0.2.0 - 2021-12-09(12:19:58 +0000)

### New

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Allow for filtered InstancePaths
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): Component added

## Release v0.1.0 - 2021-11-16(15:44:11 +0000)

