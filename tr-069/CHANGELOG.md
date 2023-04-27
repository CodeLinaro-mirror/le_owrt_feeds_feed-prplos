# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## Release v0.17.4 - 2023-04-27(05:50:11 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): [odl] Remove deprecated odl keywords
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): [odl]Remove deprecated odl keywords
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): service protocol should be integers

## Release v0.17.3 - 2023-03-30(12:29:13 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): fix fw upgrade fail
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Box does not upload the backup file
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): open firewall port according to the IP version of ConRequestURL
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): no errors generated for non existing objects
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Device.ManagementServer is missing in version 0.5.1

### Changes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): [Config] enable configurable coredump generation

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Use sah_libc-ares instead of opensource_c-ares

## Release v0.17.2 - 2023-02-21(18:16:53 +0000)

### Other

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Implementation of InstanceMode="InstanceAlias" [New]
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Implementation of InstanceMode="InstanceAlias" [New]

## Release v0.17.1 - 2023-02-21(13:55:08 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): cd router tests are completely failing for tr-069

## Release v0.17.0 - 2023-02-03(13:39:53 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): [import-dbg] Disable import-dbg by default for all amxrt plugin
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add support for ipv6

## Release v0.16.1 - 2022-12-22(16:42:37 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Remove the m4 extension of the odl definition file
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Download file is not saved under tmp

## Release v0.16.0 - 2022-12-09(14:52:20 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Implement Download/Upload/GetQueuedTransfers

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix transferComplete event

## Release v0.15.7 - 2022-11-23(09:18:47 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Crash cwmpd
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): crash when performing a GPN on Device.NonExistent parameter

## Release v0.15.6 - 2022-11-18(12:27:19 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Cwmpd process leaking when retrying to reach ACS

## Release v0.15.5 - 2022-10-18(09:25:48 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): latest versions break digest authentication

## Release v0.15.4 - 2022-10-14(08:38:36 +0000)

## Release v0.15.3 - 2022-10-10(09:14:58 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): InterfaceStackNumberOfEntries wrong type

## Release v0.15.2 - 2022-10-04(10:51:01 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add some missing parameters to cwmp_plugin odl

## Release v0.15.1 - 2022-09-22(12:20:19 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmp free

## Release v0.15.0 - 2022-09-13(16:17:01 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): The amx TR069 client must be adapted to work with ACL's

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): ubus reported datetime as string type

## Release v0.14.14 - 2022-08-23(12:44:36 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmpd crash when excute setParameterValues with object not found
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix Digest auth fails as the box send an empty cnonce

## Release v0.14.13 - 2022-08-11(11:38:38 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix Digest Authentication when qop or nc headers values are quoted
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Issue : HOP-1466 Fix Digest Authentication and refactoring code

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): It is not possible to contact the box using the ConnReqURL,...

## Release v0.14.12 - 2022-08-05(14:38:47 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix cwmpd crash when SetParameterAttributes

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix wrong error code returned when making a SetParameterValue...

## Release v0.14.11 - 2022-08-02(16:43:05 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix InformMessageScheduler cleanup before initialzing
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Check if wan is not connected, no starting cwmpd server

## Release v0.14.10 - 2022-07-13(08:25:19 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix PeriodicInformTime format
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): GPN/GPA fail with parameter search path

## Release v0.14.9 - 2022-07-04(17:30:46 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): warning on some parameter types
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): missing "M Reboot" in inform msg after reboot
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Firewall service should be required by cwmpd
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Remove duplicated env script from tr069-manager
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): warning on some parameter types
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): TCP connection is not persistent

## Release v0.14.8 - 2022-06-27(08:58:52 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Empty POST must not contain a SOAPAction and content-Type headers
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix Set session cookies
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): GPV RPC stop on a non-tr181 components

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected

## Release v0.14.7 - 2022-06-08(16:13:57 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix saving attributes cache and schedulerinform
- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix saving attributes cache and schedulerinform
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix memleaks on cwmpd

## Release v0.14.6 - 2022-05-18(10:08:12 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): libwebsockets crash after the first server reply in a multi client context

## Release v0.14.5 - 2022-05-03(16:58:00 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmpd client append handshake headers

## Release v0.14.4 - 2022-04-29(16:37:34 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): failed to generate auth headers
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): failed to generate auth headers
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): SIGABRT when timer is started twice before it is expire

## Release v0.14.3 - 2022-04-13(17:01:49 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmpd crash when excuting DHCP renew

## Release v0.14.2 - 2022-04-11(16:52:56 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Gitlab pipeline: complexity-check warnings

## Release v0.14.1 - 2022-04-06(16:35:06 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix SIGFPE when DNS resolution fail

## Release v0.14.0 - 2022-03-30(10:02:29 +0000)

### New

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Add support for digest auth
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): add support for digest authentication
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): rework cwmpd configs

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Shutdown Notif interface when exit, Fix errors
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Notify cwmpd when connectionRequestURL is modified

## Release v0.13.2 - 2022-03-24(15:36:32 +0000)

### Changes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): [GetDebugInformation] Add data model debuginfo in component services

## Release v0.13.1 - 2022-03-24(10:09:38 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): send notif when connrequrl is changed

### Changes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Enable core dumps by default

## Release v0.13.0 - 2022-03-17(19:22:33 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Use netmodel to get wan interface info
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Open the port for connection request

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmpd crash if DHCP Client instance goes down

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): support for a http stateless mode

## Release v0.12.0 - 2022-03-09(13:59:23 +0000)

### New

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Make DNS fully async

### Changes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Make DNS fully async

## Release v0.11.0 - 2022-02-24(09:41:40 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): - Add subscription to data model
- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): - Add notification mode to engine

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): issue: HOP-1028 connection error when host is set
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): It should be possible to setup some odl default values from environment
- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Avoid casting from const char* to char*

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Avoid casting const char* to char*

## Release v0.10.0 - 2022-02-10(20:55:06 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add unit tests

## Release v0.9.0 - 2022-02-10(10:16:22 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add ssl support for the cwmp_client

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Issue : PCF-546 Properly generate coverage report

## Release v0.8.1 - 2022-01-28(19:52:16 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Cleanup and fix some cwmpd issues
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Expose only the standard parameters to ACS

## Release v0.8.0 - 2022-01-14(21:26:09 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Find and update wan Interface and IP address

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Set mod_sahtrace as an optional include in odl file
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Clean up data model from non standard parameters

## Release v0.7.3 - 2022-01-11(20:13:59 +0000)

### Changes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add LDFLAGS and CFLAGS allowing to search libraries under /opt/prplos

## Release v0.7.2 - 2022-01-06(17:03:26 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Clean ressources when cwmpd cant connect

## Release v0.7.1 - 2021-12-23(10:34:51 +0000)

## Release v0.7.0 - 2021-12-14(17:31:18 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Wait for required objects before starting cwmpd
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Downgrade to libwebsockets3

## Release v0.6.0 - 2021-11-24(16:00:22 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add support for ACS Address Family

## Release v0.5.0 - 2021-11-23(12:27:47 +0000)

### New

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): support for ACS evnt subscription
- [libtr69-engine](https://gitlab.com/soft.at.home/libraries/libtr69-engine): Add support for ACS Address Family
- [libtr69-engine](https://gitlab.com/soft.at.home/libraries/libtr69-engine): Add cache file option

### Fixes

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): properly handle the connection with ACSIP list
- [libtr69-engine](https://gitlab.com/soft.at.home/libraries/libtr69-engine): Isssue: PCF-483 Fix make clean target to remove deb package

### Changes

- [libtr69-engine](https://gitlab.com/soft.at.home/libraries/libtr69-engine): replace printf by sahtrace

## Release v0.4.0 - 2021-11-18(10:44:20 +0000)

### New

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): use DNS Service to resolve ACS Server IP
- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): properly handle root parameter

### Fixes

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): enable persistent settings and use ODL persistent storage
- [libtr69-engine](https://gitlab.com/soft.at.home/libraries/libtr69-engine): missing const blocks tr069-manager tests from compiling

## Release v0.3.0 - 2021-10-28(14:40:10 +0000)

### New

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): add event subscription
- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): Impl ACS/RPCs Reboot/FactoryReset
- [libtr69-engine](https://gitlab.com/soft.at.home/libraries/libtr69-engine): Change functions using char* to const char* to avoid const cast

### Fixes

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): fix ld issue for g++ compilation
- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): issue: PCF-361 fix g++ build for opensource CI
- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): Fix SAHTRACE for cwmp-plugin

## Release v0.2.2 - 2021-10-06(13:08:38 +0000)

## Release v0.2.1 - 2021-09-17(12:11:08 +0000)

## Release v0.2.0 - 2021-09-16(15:27:07 +0000)

### New

- [tr069-manager](https://gitlab.com/soft.at.home/plugins/tr069-manager): Component added

