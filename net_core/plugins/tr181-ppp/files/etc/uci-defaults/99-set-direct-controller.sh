#!/bin/sh

sed -i 's|"mod_name": "mod-ppp-uci"|"mod_name": "mod-ppp-direct"|' "$IPKG_INSTROOT/etc/ppp/ip-down.d/ppp-down.sh"
sed -i 's|"mod_name": "mod-ppp-uci"|"mod_name": "mod-ppp-direct"|' "$IPKG_INSTROOT/etc/ppp/ip-up.d/ppp-up.sh"

exit 0
