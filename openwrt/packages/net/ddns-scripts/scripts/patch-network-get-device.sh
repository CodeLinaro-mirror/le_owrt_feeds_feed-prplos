#!/bin/sh

ROOT_DIR=$1
DDNS_FUNCTIONS_SCRIPTS="$ROOT_DIR/usr/lib/ddns"

echo "Patching ddns-scripts: replace network_get_device with ddns_get_device"

if [ ! -d "$DDNS_FUNCTIONS_SCRIPTS" ]; then
    echo "ERROR: Directory '$DDNS_FUNCTIONS_SCRIPTS' does not exist."
    exit 1
fi

for file in "$DDNS_FUNCTIONS_SCRIPTS"/*.sh; do
    [ -e "$file" ] || continue

    if ! grep -q "ddns_get_device" "$file"; then
        if ! sed -i 's/network_get_device/ddns_get_device/g' "$file"; then
            echo "ERROR: network_get_device replacement failed for $file"
        fi
    fi
done