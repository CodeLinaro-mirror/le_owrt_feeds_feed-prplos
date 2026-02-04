#!/bin/sh

OBUSPA_CA_BUNDLE="Security.CABundle.1"

echo "export OBUSPA_CA_BUNDLE=\"$OBUSPA_CA_BUNDLE\"" >> /var/etc/environment
