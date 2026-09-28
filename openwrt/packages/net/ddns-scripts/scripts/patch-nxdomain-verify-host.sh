#!/bin/sh

# Fix NXDOMAIN in verify_host_port(): if $ERRFILE does NOT contain "timed out"
# it is an NXDOMAIN / no-record condition — return 0 so the caller does not abort.

ROOT_DIR=$1
DDNS_FUNCTIONS_SCRIPTS="$ROOT_DIR/usr/lib/ddns"

echo "Patching ddns-scripts: NXDOMAIN fix for verify_host_port()"

if [ ! -d "$DDNS_FUNCTIONS_SCRIPTS" ]; then
    echo "ERROR: Directory '$DDNS_FUNCTIONS_SCRIPTS' does not exist."
    exit 1
fi

for file in "$DDNS_FUNCTIONS_SCRIPTS"/*.sh; do
    [ -e "$file" ] || continue

    if ! grep -q 'grep -q "timed out" "$ERRFILE" 2>/dev/null || return 0' "$file"; then
        grep -q 'DNS Resolver Error.*[$]__PROG Error' "$file" || continue

        TMPFILE=$(mktemp)
        if [ -z "$TMPFILE" ]; then
            echo "ERROR: NXDOMAIN fix (verify_host_port) failed (mktemp) for $file"
            continue
        fi

        while IFS= read -r line; do
            if printf '%s' "$line" | grep -q 'DNS Resolver Error.*[$]__PROG Error'; then
                printf '%s\n' 'grep -q "timed out" "$ERRFILE" 2>/dev/null || return 0'
            fi
            printf '%s\n' "$line"
        done < "$file" > "$TMPFILE"

        if ! mv -f "$TMPFILE" "$file"; then
            echo "ERROR: NXDOMAIN fix (verify_host_port) failed (mv) for $file"
        fi
    fi
done