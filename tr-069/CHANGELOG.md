# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## Release proj_prpl_M4.1.1-2022_v0.1.0 - 2023-02-28(14:57:39 +0000)

### New

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Component added
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Component added

## Release proj_prpl_M4.1-2022_v0.1.1 - 2022-12-23(20:39:17 +0000)

### Fixes

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Remove the m4 extension of the odl definition file
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Download file is not saved under tmp

## Release proj_prpl_M4.1-2022_v0.1.0 - 2022-12-21(14:18:34 +0000)

### New

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Component added
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Component added

## Release proj_prpl_M1-2022_v0.2.1 - 2022-10-18(11:15:13 +0000)

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): latest versions break digest authentication
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Add some missing parameters to cwmp_plugin odl
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): InterfaceStackNumberOfEntries wrong type

## Release proj_prpl_M1-2022_v0.2.0 - 2022-09-30(12:38:06 +0000)

### New

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): The amx TR069 client must be adapted to work with ACL's

### Fixes

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix InformMessageScheduler cleanup before initialzing
- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix Digest Authentication when qop or nc headers values are quoted
- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Fix cwmpd crash when SetParameterAttributes
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Issue : HOP-1466 Fix Digest Authentication and refactoring code
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Check if wan is not connected, no starting cwmpd server
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): ubus reported datetime as string type
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmpd crash when excute setParameterValues with object not found
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix cwmp free
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix Digest auth fails as the box send an empty cnonce

### Other

- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): It is not possible to contact the box using the ConnReqURL,...
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Fix wrong error code returned when making a SetParameterValue...

## Release proj_prpl_M1-2022_v0.1.1 - 2022-09-20(14:32:23 +0000)

## Release proj_prpl_M1-2022_v0.1.0 - 2022-07-20(14:58:35 +0000)

### New

- [libtr69-engine](https://gitlab.com/prpl-foundation/components/core/libraries/libtr69-engine): Component added
- [tr069-manager](https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager): Component added

## Release proj_prpl_M1-2022_v0.0.1 - 2022-06-28(07:41:14 +0000)

