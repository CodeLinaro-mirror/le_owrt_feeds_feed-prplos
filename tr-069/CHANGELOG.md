# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


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

