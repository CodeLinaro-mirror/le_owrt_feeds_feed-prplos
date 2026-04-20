# prpl modifications to upstream obuspa

## 009-remove-device-security-certificate.patch

Add define REMOVE_DEVICE_SECURITY_CERTIFICATE to remove OBUSPA's own Device.Security. tree

Define REMOVE_DEVICE_SECURITY_CERTIFICATE to expose tr181-security's:
- Device.Security.Certificate.
- Device.Security.CABundle.

to obuspa and therefore to the outside world over USP.

## 010-load_agent_cert_cb.patch

Implement load_agent_cert_cb vendor hook

load_agent_cert_cb is a vendor hook (callback) already declared in
obuspa. When it is registered, it is called to load the device private
key and device certificate into the provided openssl context. It is
called by obuspa core to initialize the openssl context of all MTP
connections.

If obuspa is given the following two environment variables:
- CertificateURI
- PrivateKeyURI

register the hook, and when the hook is called, extract their values and
load the given security credentials.

Add support for pkcs#11 private key URI as well as file path.
