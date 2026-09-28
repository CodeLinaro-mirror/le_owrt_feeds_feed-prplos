#!/bin/sh

# Add the ddns_get_device() function definition to dynamic_dns_functions.sh.
# All ddns scripts source this file, so the function is available everywhere.
# Previously this was appended to /lib/functions/network.sh at runtime.

ROOT_DIR=$1
TARGET="$ROOT_DIR/usr/lib/ddns/dynamic_dns_functions.sh"

echo "Patching ddns-scripts: add ddns_get_device() function definition"

if [ ! -f "$TARGET" ]; then
    echo "ERROR: '$TARGET' does not exist."
    exit 1
fi

if ! grep -q 'ddns_get_device()' "$TARGET"; then
    printf '\nddns_get_device() { __tmp="$1=$2"; eval "$__tmp"; }\n' >> "$TARGET"
fi