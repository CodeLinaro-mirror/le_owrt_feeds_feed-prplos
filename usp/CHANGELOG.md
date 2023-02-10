# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## Release v5.0.7 - 2023-02-10(19:35:07 +0000)

## Release v5.0.6 - 2023-02-07(14:55:07 +0000)

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [SAHPairing] Make sahpairing work with MQTT client

## Release v5.0.5 - 2023-02-06(09:15:41 +0000)

## Release v5.0.4 - 2023-02-02(09:48:02 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Remove doc target from uspagent

## Release v5.0.3 - 2023-01-31(13:12:26 +0000)

### Fixes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [MQTT][USP] Overlapping reconnects can cause a segmentation fault

## Release v5.0.2 - 2023-01-23(20:32:13 +0000)

### Other

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [KPN SW2][Security]Restrict ACL of admin user

## Release v5.0.1 - 2023-01-19(15:30:26 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP Agent][Amx]USP request returns 'invalid path' all the time

## Release v5.0.0 - 2023-01-13(12:03:03 +0000)

### Breaking

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [KPN][USP] max_depth has no effect on the Get Message

### New

- [mod-amxb-usp](https://gitlab.com/soft.at.home/usp/modules/amxb_backends/amxb_usp): [USP][AMX] Add support for asynchronous invokes to USP backend

### Fixes

- [mod-amxb-usp](https://gitlab.com/soft.at.home/usp/modules/amxb_backends/amxb_usp): Handle command output args for non-backend processes

### Changes

- [mod-amxb-usp](https://gitlab.com/soft.at.home/usp/modules/amxb_backends/amxb_usp): [KPN][USP] max_depth has no effect on the Get Message
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [KPN][USP] max_depth has no effect on the Get Message
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [KPN][USP] max_depth has no effect on the Get Message

### Other

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): [SAHPairing] Make sahpairing work with MQTT client

## Release v4.1.5 - 2023-01-10(16:12:24 +0000)

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Get requests with valid search expressions must return successful
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [TR181-MQTT Client] tr181-mqtt wants a non empty ClientID with MQTT 3.1.1
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Handle command output args for non-backend processes
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [Bulkdata][USP] Controller parameter must be set
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [uspagent] dm:OperationComplete created too late
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Get requests with valid search expressions must return successful
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): LocalAgent.MTP.i.Status must be Up if MQTT client is connected

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [KPN SW2][Security]Restrict ACL of admin user

## Release v4.1.4 - 2022-12-13(13:15:51 +0000)

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Add interop with different MQTT Broker version

## Release v4.1.3 - 2022-12-09(13:59:50 +0000)

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] Triggered event needs an exclamation mark
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [Config] coredump generation should be configurable

## Release v4.1.2 - 2022-12-07(16:15:02 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Allow invoking commands without braces

## Release v4.1.1 - 2022-12-06(13:34:43 +0000)

## Release v4.1.0 - 2022-12-02(12:17:38 +0000)

### New

- [mod-amxb-usp](https://gitlab.com/soft.at.home/usp/modules/amxb_backends/amxb_usp): Component added

## Release v4.0.1 - 2022-11-25(10:07:14 +0000)

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] GSDM response cannot be extracted properly

## Release v4.0.0 - 2022-11-24(15:15:03 +0000)

### Removed

- [mod-usp-cli](https://gitlab.com/soft.at.home/usp/modules/amx_cli/mod-usp-cli): Component removed

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [AMX] Apply new amxd_path_setf formatting
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [AMX] Apply new amxd_path_setf formatting
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [AMX] Apply new amxd_path_setf formatting

### Other

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Add extra controller instance
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] Add IMTP defaults to tr181-localagent
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Rename EndpointID
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Update IMTP defaults

## Release v3.11.0 - 2022-11-23(12:00:24 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Extend error code conversion
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [Security][USP] Add ACLs for operate to USP agent

### Other

- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Opensource component

## Release v3.10.1 - 2022-11-17(15:14:03 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP][tr181-localagent]Local Agent MTP status is down even if connected and subscribed
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): USP agent requires LocalAgent data model

## Release v3.10.0 - 2022-11-16(13:55:53 +0000)

### New

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Add TcpSendMem parameter to Client object

## Release v3.9.4 - 2022-11-10(16:31:33 +0000)

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Confusion around USP version
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Missing Periodic! event in data model
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): No response must be send when send_resp is false

### Other

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): [Packet Interception] Create the new Packet Interception component

## Release v3.9.3 - 2022-11-08(08:47:48 +0000)

### Fixes

- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [USP] uspi_con_read can return with value 1

## Release v3.9.2 - 2022-10-29(07:44:10 +0000)

### Changes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): It must be possible to accept multiple MQTT connections per Client
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): USP agent/controller must indicate it is interested in USP messages
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [ACS][V12] Setting of VOIP in a single SET does not enable VoiceProfile
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): uspagent must indicate it is interested in USP messages

## Release v3.9.1 - 2022-10-25(06:39:49 +0000)

### Fixes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [MQTT] Segmentation fault in tr181-mqtt after enabling client
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Add extra logging
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [USP] usp-endpoint should have separate entrypoint

## Release v3.9.0 - 2022-10-20(13:21:36 +0000)

### New

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): Need separate type for JSON encoded MQTT properties

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Fix unit tests of libusp after changes to libamxd

### Changes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [ACS][V12] Setting of VOIP in a single SET does not enable VoiceProfile

## Release v3.8.1 - 2022-10-18(14:40:28 +0000)

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] Values of reference parameters should start with Device.
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] Values of reference parameters should start with Device. (revert)
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] Permission denied due to ControllerTrust mismatch

## Release v3.8.0 - 2022-10-13(14:35:58 +0000)

### New

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Add method to get controller MTP info from dm
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USPAgent][MQTT Client] It must be possible to share a single MQTT Client with multiple USP Controller instances

## Release v3.7.2 - 2022-10-11(11:07:01 +0000)

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): AssignedRole parameter must have a Device. prefix
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Strip Device. prefix from AssignedRole

## Release v3.7.1 - 2022-10-10(08:33:41 +0000)

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Missing MTPNumberOfEntries parameter
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] IMTP Status parameter is Down when it should be Up

## Release v3.7.0 - 2022-09-30(11:44:20 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] IMTP should use LocalAgent.Subscription for subscriptions

### Fixes

- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [USP] usp-endpoint exits when no bus ctx is found
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] uspagent does not respond correctly with EndpointID

## Release v3.6.0 - 2022-09-21(07:43:13 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): MQTT ClientID must have the same value as LocalAgent.EndpointID

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Disable opensource CI
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Use sah-lib-mosquitto-dev in debian package dependencies
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [USP] Open source tr181-mqtt
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [BART] Create ambiorix bart module
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [BART] Create ambiorix bart module

## Release v3.5.0 - 2022-09-15(13:31:11 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Unit tests need to be added for the MTP of type IMTP

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] [Add_Msg] The AddResp does not contain the elements in the unique keymap under the OperationSuccess
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] Agent must assign default values
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] [Add_Msg] The AddResp does not contain the elements in the unique keymap under the OperationSuccess
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP][CDROUTER] Agent does not reject messages that do not contain their to_id in the USP record

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] LIBDIR should be STAGING_LIBDIR to avoid conflicts

## Release v3.4.1 - 2022-09-08(07:13:06 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Latest version of USP breaks MQTT communication

## Release v3.4.0 - 2022-09-06(13:19:34 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Upstep version of libuspprotobuf
- [libuspi](https://gitlab.com/soft.at.home/usp/libraries/libuspi): Component added
- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): [USP] Upstep version of libuspprotobuf
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Add MTP of type IMTP
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Add MTP of type IMTP

### Fixes

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): Blocking read should not spam logs

## Release v3.3.0 - 2022-08-30(12:37:24 +0000)

### New

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Add MTP of type IMTP

## Release v3.2.1 - 2022-08-26(06:19:41 +0000)

### Changes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Register message does not need to contain URI

## Release v3.2.0 - 2022-08-25(14:03:22 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] The Periodic! event should be ported from previous code base

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): PeriodicNotifInterval value should be at least 1
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [ACS][V12] ValueChange Subscriptions only sent for last parameter in ReferenceList
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Slots can be triggered when subscription was already removed

## Release v3.1.1 - 2022-08-16(12:54:01 +0000)

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [ACS][V12] RG does not send a Boot! event for the second Reboot() command

## Release v3.1.0 - 2022-08-04(07:27:00 +0000)

### New

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Value change on Device.DeviceInfo.SoftwareVersion after firmware upgrade
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Value change on Device.DeviceInfo.SoftwareVersion after firmware upgrade

## Release v3.0.0 - 2022-08-02(06:55:10 +0000)

### Removed

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): Component removed

## Release v2.9.1 - 2022-07-22(08:43:08 +0000)

### Fixes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Certificate and config to connect to FUT backend
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] ACL files cannot be retrieved when role paths don't end with a dot

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [KPN][ROB] CPU increased has been observed

## Release v2.9.0 - 2022-07-14(17:24:28 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Add latest USP error codes

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] LIBDIR should be STAGING_LIBDIR to avoid conflicts

### Changes

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): [USP] A dot must be added to reference paths
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] A dot must be added to reference paths
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] A dot must be added to reference paths
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Make forwarding of output arguments in a USP message more generic

## Release v2.8.2 - 2022-07-12(15:44:15 +0000)

### Fixes

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): List index out of range
- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): TR181 Crash on CR2bis
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [MQTT] TLS parameters should be persistent

### Changes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] It must be possible to set string parameters starting with a plus
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] It must be possible to set string parameters starting with a plus

## Release v2.8.1 - 2022-07-04(11:03:07 +0000)

### Fixes

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): Don't strip Device. when using ref in search path

## Release v2.8.0 - 2022-06-30(07:26:40 +0000)

### New

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP][KPN] Set ResponseTopicConfigured to hdm topic

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] tr181-mqtt function CreateListenSocket should be called on MQTT object

### Changes

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): [USP][KPN] Set ResponseTopicConfigured to hdm topic

## Release v2.7.2 - 2022-06-22(07:08:46 +0000)

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Support TLS for MQTT.Client instance used for USP

## Release v2.7.1 - 2022-06-14(08:15:56 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP][CDROUTER] The Agent responds with an invalid supported protocol to the controller

## Release v2.7.0 - 2022-06-09(12:15:50 +0000)

### New

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP Agent] Implement TransferComplete functionality

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Problem with loading defaults file
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] The USP agent should store its persistent parameters periodically
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] MQTT.Client.{i}.ForceReconnect() can time out

### Changes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Add CommandKey and Requestor to args of async operations

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [amx][MQTT][Client] The MQTT client must support a (tr181) retransmission scheme

## Release v2.6.0 - 2022-06-03(14:23:02 +0000)

### New

- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Implement GetInstances request and response

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Missing function to handle get_instances

### Other

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Component should have a debian package
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Issue: amx/usp/applications/tr181-localagent#1 Component should have a debian package
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): ODL option import-dbg should be disabled
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): The USP Agent must be opensourced to gitlab.com/soft.at.home
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [packages][debian] Correct makefile

## Release v2.5.0 - 2022-05-25(14:47:04 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP Agent] Implement GetInstances message

### Fixes

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected
- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected
- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): [libfwinterface] Pipeline doesn't stop when memory leaks are detected
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [Gitlab CI][Unit tests][valgrind] Pipeline doesn't stop when memory leaks are detected

### Other

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Add libamxj to deps
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USPAgent] The USP Agent must be opensourced to gitlab.com/soft.at.home

## Release v2.4.1 - 2022-05-11(07:25:25 +0000)

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Update header file
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [MQTT] Topic must be writable after creation
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] No response from USP agent

## Release v2.4.0 - 2022-05-05(07:52:11 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP Agent] Implement GetInstances message
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Implement operate command

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Correctly install odl files
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] USP commands with braces are invoked synchronously

## Release v2.3.0 - 2022-05-02(14:11:31 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Separate BBF and SAH code

### Fixes

- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [MQTT] Clients connecting with the same ID cause conflicts
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [MQTT] Clients connecting with the same ID cause conflicts

### Other

- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): Enable auto opensourcing

## Release v2.2.0 - 2022-04-25(13:32:58 +0000)

### New

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): [Device] Support Sending Boot! event
- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): [USP][MQTT] MQTT topic needs to be set dynamically
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP][MQTT] MQTT topic needs to be set dynamically
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [amx][MQTT][Client] The MQTT client must support a (tr181) retransmission scheme

### Fixes

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): Cannot find shared object on box
- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): Makefile install target is broken
- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): Only include prefix odl
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP][MQTT] Update order of entrypoints
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] It must be possible to override odl files
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [USP] LocalAgent.Subscription is no longer persistent
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): amxp timer works with miliseconds
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [AMX] Hidden parameter cannot be saved correctly
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [Buildsystem] Pipes are stripped from odl files when they are installed [fix]
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Device prefix prevents finding the IMTP context
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] USP notifications contain swapped EndpointIDs

## Release v2.1.0 - 2022-04-06(12:47:01 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [Device] Support Sending Boot! event

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Operate response can contain zero output args
- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Event parameters can contain empty strings
- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): [USP] Onboarding module unsubscribes too soon
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): [Device] Support Sending Boot! event

## Release v2.0.0 - 2022-03-29(11:39:27 +0000)

### Breaking

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USPAgent] Split agent in datamodel part and function part

### New

- [mod-usp-onboarding](https://gitlab.com/soft.at.home/usp/modules/mod_usp_onboarding): Component added
- [tr181-localagent](https://gitlab.com/soft.at.home/usp/applications/tr181-localagent): Component added

### Fixes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [MQTT] Legacy code needs to be removed

### Changes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [GetDebugInformation] Add data model debuginfo in component services
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [USP] Re-enable data model persistency in uspagent and tr181-mqtt
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [GetDebugInformation] Add data model debuginfo in component services

## Release v1.9.3 - 2022-03-23(13:52:20 +0000)

### Fixes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Doc generation for tr181-mqtt component (amx)
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Set KeepAliveTime to 0 by default [revert]

## Release v1.9.2 - 2022-03-15(15:48:57 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [ACL][USP] ACL files must be located in writable directory
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] [Set_msg] No response from the agent after sending a Set message

## Release v1.9.1 - 2022-03-15(11:38:47 +0000)

### Fixes

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Set KeepAliveTime to 0 by default

### Other

- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): Enable core dumps by default
- [tr181-mqtt](https://gitlab.com/soft.at.home/plugins/tr181-mqtt): [USPAgent] The USP Agent must be opensourced to gitlab.com/soft.at.home

## Release v1.9.0 - 2022-02-24(18:25:53 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] It must be possible to build deregister messages

### Fixes

- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): Paths field in deregister must be plural
- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Cannot build register message with multiple paths

### Other

- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): [USPAgent] The USP Agent must be opensourced to gitlab.com/soft.at.home

## Release v1.8.0 - 2022-02-17(18:18:29 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Implement a discovery service
- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Handle allow partial set
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Handle allow partial set

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Cannot create USP Error messages with parameter errors
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Cannot create USP Error messages with parameter errors

### Other

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USPAgent] The USP Agent must be opensourced to gitlab.com/soft.at.home
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USPAgent] The USP Agent must be opensourced to gitlab.com/soft.at.home

## Release v1.7.0 - 2022-02-03(18:24:03 +0000)

### New

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): [IMTP] TLV of type endpoint_id is needed

### Fixes

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): Need to reread large IMTP messages
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Remove impt_tlv_type_msgid

### Other

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): Solve open source issues
- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): [USPAgent] The USP Agent must be opensourced to gitlab.com/soft.at.home

## Release v1.6.0 - 2022-01-28(19:54:15 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): It must be possible to generate a unique endpoind ID for a USP endpoint

### Fixes

- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [IMTP] Need to reread large IMTP messages

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Add extra logging after acl verification

## Release v1.5.1 - 2022-01-20(16:43:50 +0000)

### Changes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Component downstepped from v0.3.0 to v0.2.12

## Release v1.5.0 - 2022-01-14(21:26:11 +0000)

### New

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Handle allow partial set

### Changes

- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): Replace supports_add boolean with shared boolean

## Release v1.4.1 - 2022-01-11(20:14:27 +0000)

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Error with notifications when installing 2 applications in the same time

## Release v1.4.0 - 2022-01-07(17:11:12 +0000)

### New

- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): tr181-mqtt has trouble connecting due to DNS issue at boot

### Fixes

- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [MQTT] Properties should only be added for MQTT 5.0

## Release v1.3.1 - 2021-12-21(11:52:16 +0000)

### Fixes

- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [MQTT] tr181-mqtt should not try to extract msg id from TLV

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP Agent] Add unittest for on board request
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Agent must publish responses on controller's reply-to topic

## Release v1.3.0 - 2021-12-16(15:14:54 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Implement OnBoardRequest

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Missing notification after async operation

### Other

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] libusp is spamming a useless log message

## Release v1.2.1 - 2021-12-13(16:43:12 +0000)

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): OperationComplete notification may contain no output_args
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Remove references to libmosquitto_poc
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): Controller must not crash when receiving USP Error messages

### Changes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): Extend unit tests for OperationComplete notifications
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Agent must publish responses on controller's reply-to topic
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [USP] Agent must publish responses on controller's reply-to topic
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [USP] Agent must publish responses on controller's reply-to topic

## Release v1.2.0 - 2021-12-08(19:16:34 +0000)

### New

- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): [USP] Implement a discovery service

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP Agent] USP messages on sop should be send over pcb sysbus with Device prefix still present

### Changes

- [libuspprotobuf](https://gitlab.com/soft.at.home/usp/libraries/libprotobuf): [USP] Make protobuf compiler version check less strict

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Issue: amx/usp/applications/uspagent#41 [DOC] Ambiorix events must contain a separate htable for parameters
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USPAgent] Support Controller.BootParameter.{i}. feature

## Release v1.1.2 - 2021-11-30(13:16:33 +0000)

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] Version check should be less strict
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Incorrect subscription filter for Events
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] The correct bus context must be used for operations

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP Agent] USP messages on sop should be send over pcb sysbus with Device prefix still present

## Release v1.1.1 - 2021-11-23(14:27:51 +0000)

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Get supported protocol message should be handled on requests instead of responses
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Avoid segmentation fault on exit

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP Agent] Retrieve correct mtp information when a notify retry happens
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Change startup order
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Update documentation
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Handle subscriptions of objects under Device.

## Release v1.1.0 - 2021-10-28(10:08:52 +0000)

### New

- [libimtp](https://gitlab.com/soft.at.home/usp/libraries/libimtp): Add documentation for TLV messages

## Release v1.0.0 - 2021-10-14(11:36:43 +0000)

### Breaking

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP][ACL] Add access control verification to USP agent

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [ACL] Add default ACL configuration per services

### Fixes

- [libusp](https://gitlab.com/soft.at.home/usp/libraries/libusp): [USP] allow_partial should be ignored
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Add unit tests to uspagent
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [AMX][USP] Prevent double initialization in uspagent
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): Segmentation fault when disconnecting client
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [ACL] Add default ACL configuration per services
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [USP] MQTT clients should send ping messages to stay connected

### Other

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP][ACL] Operator must have access while mapper is missing
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP][ACL] Operator must have access while mapper is missing
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Add README and configuration guidelines for USP agent
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): Add example ACL files

## Release v0.4.0 - 2021-09-24(10:04:09 +0000)

### New

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): Issue:  NET-2985 [USPAgent][Device] Handle Device.LocalAgent USP messages
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USPAgent] Implementation of the ControllerTrust featureDev controllertrust
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] Configure defaults for communicating with orange controller
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): Extend logging for MQTT properties

### Fixes

- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] USP agent should use first bus context
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] The USP Agent and MQTT client should have the USP backend as run time dependency
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [AMX] Debian packages for ambiorix plugins should create symlinks to amxrt
- [uspagent](https://gitlab.com/soft.at.home/usp/applications/uspagent): [USP] LocalAgent Reference parameters should use the same action callbacks
- [usp-endpoint](https://gitlab.com/soft.at.home/usp/applications/usp-endpoint): [AMX] Debian packages for ambiorix plugins should create symlinks to amxrt
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): Issue #27: Remove references to libmosquitto_poc from README
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [USP] The USP Agent and MQTT client should have the USP backend as run time dependency
- [tr181-mqtt](https://gitlab.com/prpl-foundation/components/core/plugins/tr181-mqtt): [AMX] Debian packages for ambiorix plugins should create symlinks to amxrt
