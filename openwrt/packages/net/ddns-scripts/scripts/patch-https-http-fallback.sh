#!/bin/sh

ROOT_DIR=$1
DDNS_FUNCTIONS_SCRIPTS="$ROOT_DIR/usr/lib/ddns"

LINE_SETS_HTTPS="[ \$use_https -ne 0 ] && __URL=\$(echo \$__URL | sed -e 's#^http:#https:#')"
LINE_SETS_HTTP="[ \$use_https -eq 0 ] && __URL=\$(echo \$__URL | sed -e 's#^https:#http:#')"

echo "Patching ddns-scripts: add https-to-http fallback"

if [ ! -d "$DDNS_FUNCTIONS_SCRIPTS" ]; then
    echo "ERROR: Directory '$DDNS_FUNCTIONS_SCRIPTS' does not exist."
    exit 1
fi

for file in "$DDNS_FUNCTIONS_SCRIPTS"/*.sh; do
    [ -e "$file" ] || continue

    if ! grep -qF "$LINE_SETS_HTTP" "$file"; then
        escaped_line_sets_https=$(printf "%s\n" "$LINE_SETS_HTTPS" | sed 's/[&/\]/\\&/g')
        if ! sed -i "/$escaped_line_sets_https/a $LINE_SETS_HTTP" "$file"; then
            echo "ERROR: https-to-http fallback patch failed for $file"
        fi
    fi
done