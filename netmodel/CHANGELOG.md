# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## Release proj_prpl_M4.1.1-2022_v1.1.0 - 2023-03-02(14:48:02 +0000)

### New

- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): Box sends 2 ICMPv6 RA when a RS is received on LAN
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Box sends 2 ICMPv6 RA when a RS is received on LAN

### Fixes

- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): Return the relative lifetimes in getIPv6Prefix result
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Return index in getIPv6Prefix
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Return the relative lifetimes in getIPv6Prefix result

## Release proj_prpl_M4.1.1-2022_v1.0.0 - 2023-02-21(18:48:08 +0000)

### Removed

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Remove registerSync API

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add API to retrieve the root object name
- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Increase in unit test coverage
- [netmodel-dslite](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dslite): Component added
- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical): Component added
- [netmodel-ppp](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ppp): Dynamic handling of network events (PPP)
- [netmodel-radio](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-radio): Component added
- [netmodel-ssid](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ssid): Component added
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][client] Add support for radio and ssid clients in netmodel
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add API to get all link information
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Add statistics for queries and events
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [dslite][netmodel] Create a netmodel client for dslite interfaces.

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] NetDevName doesn't sync if the interface does not yet exist during find_instance_to_sync_callback
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add a retry mechanism in case mib sync fails to start
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Optimize identical queries in lib netmodel
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Close resolvePath queries in netmodel clients when the path is resolved
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Interface linking sometimes fails
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Queries are not properly closed in netmodel_cleanup
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Do not call a query callback if the result is the same
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): gcc 11.2.0 linker cannot find -lsahtrace
- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): The Management bridge port must not have the "bridgeport" tag set, only the "bridge" tag.
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): Use the correct cleanup function to avoid memory leaks
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][DHCPv6Client][getDHCPOption] DHCPv6 option 24 is wrongly parsed
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add support of the mib for the brigde tag
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [Netmodel] remove lowerlayers parameter from ssid and radio
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Take null variants into account when comparing query results
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [Config] coredump generation should be configurable
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Check query flag argument using regex when retriggering

### Changes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Synchronize the Name parameter by default
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Make the Intf Name parameter writable

### Other

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Change query updated event to match the event sent by NeMo
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Fix makefile always using "NeMo" as root object name
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Update copyright information
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [netmodel] sometimes netmodel-clients won't start
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [PRPLoS] Reduce logging during start up.
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [NetModel] Update copyright information
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): [NetModel] Update copyright information
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [PRPLoS] Reduce logging during start up.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Use amxc_var_compare to compare htable and list variants
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Reduce the amount of variant copies
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Update copyright information

## Release proj_prpl_M4.1-2022_v1.0.1 - 2022-12-23(20:34:51 +0000)

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Do not call a query callback if the result is the same

## Release proj_prpl_M4.1-2022_v1.0.0 - 2022-12-21(13:05:19 +0000)

### Removed

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Remove registerSync API

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add API to retrieve the root object name
- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Increase in unit test coverage
- [netmodel-dslite](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dslite): Component added
- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical): Component added
- [netmodel-ppp](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ppp): Dynamic handling of network events (PPP)
- [netmodel-radio](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-radio): Component added
- [netmodel-ssid](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ssid): Component added
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][client] Add support for radio and ssid clients in netmodel
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add API to get all link information
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Add statistics for queries and events
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [dslite][netmodel] Create a netmodel client for dslite interfaces.

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] NetDevName doesn't sync if the interface does not yet exist during find_instance_to_sync_callback
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add a retry mechanism in case mib sync fails to start
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Optimize identical queries in lib netmodel
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Close resolvePath queries in netmodel clients when the path is resolved
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Interface linking sometimes fails
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): gcc 11.2.0 linker cannot find -lsahtrace
- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): The Management bridge port must not have the "bridgeport" tag set, only the "bridge" tag.
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): Use the correct cleanup function to avoid memory leaks
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][DHCPv6Client][getDHCPOption] DHCPv6 option 24 is wrongly parsed
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add support of the mib for the brigde tag
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [Netmodel] remove lowerlayers parameter from ssid and radio
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Take null variants into account when comparing query results
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [Config] coredump generation should be configurable

### Changes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Synchronize the Name parameter by default
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Make the Intf Name parameter writable

### Other

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Change query updated event to match the event sent by NeMo
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Fix makefile always using "NeMo" as root object name
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Update copyright information
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [netmodel] sometimes netmodel-clients won't start
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [PRPLoS] Reduce logging during start up.
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [NetModel] Update copyright information
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): [NetModel] Update copyright information
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [PRPLoS] Reduce logging during start up.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Use amxc_var_compare to compare htable and list variants
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Reduce the amount of variant copies
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Update copyright information

## Release proj_prpl_M4-2022_v1.0.0 - 2022-12-13(15:23:38 +0000)

### Removed

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Remove registerSync API

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add API to retrieve the root object name
- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Increase in unit test coverage
- [netmodel-dslite](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dslite): Component added
- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical): Component added
- [netmodel-ppp](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ppp): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][client] Add support for radio and ssid clients in netmodel
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add API to get all link information

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] NetDevName doesn't sync if the interface does not yet exist during find_instance_to_sync_callback
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add a retry mechanism in case mib sync fails to start
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Optimize identical queries in lib netmodel
- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): The Management bridge port must not have the "bridgeport" tag set, only the "bridge" tag.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add support of the mib for the brigde tag
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [Netmodel] remove lowerlayers parameter from ssid and radio
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Take null variants into account when comparing query results

### Other

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Change query updated event to match the event sent by NeMo
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Fix makefile always using "NeMo" as root object name
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [netmodel] sometimes netmodel-clients won't start
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [PRPLoS] Reduce logging during start up.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [PRPLoS] Reduce logging during start up.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Use amxc_var_compare to compare htable and list variants

## Release proj_prpl_M2-2022_v1.1.0 - 2022-10-24(13:05:32 +0000)

### New

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add API to get all link information

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Optimize identical queries in lib netmodel
- [netmodel-bridge](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-bridge): The Management bridge port must not have the "bridgeport" tag set, only the "bridge" tag.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Add support of the mib for the brigde tag
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Take null variants into account when comparing query results

### Other

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Use amxc_var_compare to compare htable and list variants

## Release proj_prpl_M2-2022_v1.0.0 - 2022-10-17(09:36:16 +0000)

### Removed

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Remove registerSync API

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add API to retrieve the root object name
- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Increase in unit test coverage
- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical): Component added
- [netmodel-ppp](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ppp): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][client] Add support for radio and ssid clients in netmodel

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] NetDevName doesn't sync if the interface does not yet exist during find_instance_to_sync_callback
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add a retry mechanism in case mib sync fails to start
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [Netmodel] remove lowerlayers parameter from ssid and radio

### Other

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Change query updated event to match the event sent by NeMo
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Fix makefile always using "NeMo" as root object name
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [netmodel] sometimes netmodel-clients won't start
- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [PRPLoS] Reduce logging during start up.
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [PRPLoS] Reduce logging during start up.

## Release proj_prpl_M1-2022_v1.0.0 - 2022-08-29(18:54:10 +0000)

### Removed

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [NetModel] Remove registerSync API

### New

- [netmodel-ppp](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ppp): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): Dynamic handling of network events (PPP)
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][client] Add support for radio and ssid clients in netmodel

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add a retry mechanism in case mib sync fails to start

### Other

- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [netmodel] sometimes netmodel-clients won't start

## Release proj_prpl_M1-2022_v0.2.1 - 2022-07-05(12:39:20 +0000)

### Other

- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical): Opensource component

## Release proj_prpl_M1-2022_v0.2.0 - 2022-06-29(17:33:59 +0000)

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add API to retrieve the root object name

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] NetDevName doesn't sync if the interface does not yet exist during find_instance_to_sync_callback

### Other

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [NetModel] Change query updated event to match the event sent by NeMo
- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): Fix makefile always using "NeMo" as root object name
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [PRPLoS] Reduce logging during start up.

## Release proj_prpl_M1-2022_v0.1.0 - 2022-06-22(19:17:15 +0000)

### New

- [netmodel-logical](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-logical): Component added

## Release proj_prpl_M1-2022_v0.0.2 - 2022-06-21(07:43:02 +0000)

### Other

- [netmodel-clients](https://gitlab.com/prpl-foundation/components/netmodel/applications/netmodel-clients): [PRPLoS] Reduce logging during start up.

## Release proj_prpl_M1-2022_v0.0.1 - 2022-06-03(14:14:59 +0000)

## Release v2.4.2 - 2022-05-31(10:33:09 +0000)

### Fixes

- [netmodel-netdev](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-netdev): [NetModel] NetDevName doesn't sync if the interface does not yet exist during find_instance_to_sync_callback

## Release v2.4.1 - 2022-05-25(13:17:34 +0000)

## Release v2.4.0 - 2022-05-24(07:28:10 +0000)

### New

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel][client] Add support for ppp clients in netmodel

## Release v2.3.4 - 2022-05-03(06:27:01 +0000)

### Fixes

- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): NetModel getAddr asynchronous query not working

## Release v2.3.3 - 2022-04-26(10:03:18 +0000)

### Fixes

- [netmodel-netdev](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-netdev): netdev-up flag on vlan-vlan201 is gone after switching WANManager's WANMode twice

## Release v2.3.2 - 2022-04-23(07:27:40 +0000)

### Fixes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): netdev-up flag on vlan-vlan201 is gone after switching WANManager's WANMode twice

## Release v2.3.1 - 2022-04-21(17:19:55 +0000)

### Fixes

- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): NetModel getAddr asynchronous query not working

### Changes

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [Lib NetModel] Add an initialized check for each API method

## Release v2.3.0 - 2022-04-19(14:17:48 +0000)

### New

- [libnetmodel](https://gitlab.com/prpl-foundation/components/core/libraries/libnetmodel): [netmodel] Support of prefix queries in netmodel/libnetmodel
- [netmodel-ip](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-ip): [netmodel] Support of prefix queries in netmodel/libnetmodel
- [netmodel](https://gitlab.com/prpl-foundation/components/core/plugins/netmodel): [netmodel] Support of prefix queries in netmodel/libnetmodel

## Release v2.2.5 - 2022-04-14(13:42:23 +0000)

### Changes

- [mod-netmodel](https://gitlab.com/prpl-foundation/components/netmodel/modules/mod-netmodel): Make the Interface path prefixed
- [netmodel-dhcpv4](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv4): Make the Interface path prefixed
- [netmodel-dhcpv6](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-dhcpv6): Make the Interface path prefixed
- [netmodel-netdev](https://gitlab.com/prpl-foundation/components/netmodel/clients/netmodel-netdev): Vlan Interfaces are not up after creation

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

