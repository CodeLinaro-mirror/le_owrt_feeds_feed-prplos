#!/bin/sh

# Fix NXDOMAIN in get_registered_ip(): on NXDOMAIN, nslookup exits non-zero just
# like a network timeout, causing infinite retries instead of updating. When
# $ERRFILE does NOT contain "timed out", treat it as "no record exists": set the
# registered IP to empty and return 0 so the caller proceeds to the provider update.

ROOT_DIR=$1
DDNS_FUNCTIONS_SCRIPTS="$ROOT_DIR/usr/lib/ddns"

echo "Patching ddns-scripts: NXDOMAIN fix for get_registered_ip()"

if [ ! -d "$DDNS_FUNCTIONS_SCRIPTS" ]; then
    echo "ERROR: Directory '$DDNS_FUNCTIONS_SCRIPTS' does not exist."
    exit 1
fi

for file in "$DDNS_FUNCTIONS_SCRIPTS"/*.sh; do
    [ -e "$file" ] || continue

    if ! grep -q 'grep -q "timed out" "$ERRFILE" 2>/dev/null || { eval' "$file"; then
        grep -q '"[$]__PROG error: ' "$file" || continue

        TMPFILE=$(mktemp)
        if [ -z "$TMPFILE" ]; then
            echo "ERROR: NXDOMAIN fix (get_registered_ip) failed (mktemp) for $file"
            continue
        fi

        while IFS= read -r line; do
            if printf '%s' "$line" | grep -q '"[$]__PROG error: '; then
                printf '%s\n' 'grep -q "timed out" "$ERRFILE" 2>/dev/null || { eval "$1=\"\""; return 0; }'
            fi
            printf '%s\n' "$line"
        done < "$file" > "$TMPFILE"

        if ! mv -f "$TMPFILE" "$file"; then
            echo "ERROR: NXDOMAIN fix (get_registered_ip) failed (mv) for $file"
        fi
    fi
done