#!/bin/sh

DEVICE_CERT="Device.Security.Certificate.2."
TRUST_STORE_LOCATION="/usr/share/ca-certificates"
CONFIGURATION_FILE="/tmp/obuspa-security-configuration.conf"

echo "export OBUSPA_TRUST_STORE=\"${TRUST_STORE_LOCATION}\"" >> /var/etc/environment
echo "export OBUSPA_DEVICE_CERT=\"$DEVICE_CERT\"" >> /var/etc/environment
echo "export OBUSPA_CONFIGURATION_FILE=\"$CONFIGURATION_FILE\"" >> /var/etc/environment
