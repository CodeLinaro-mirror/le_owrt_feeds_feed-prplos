#!/bin/sh

HWMACADDRESS=$(readmfg -m BASE_MAC_ADDRESS)
MANUFACTURER=$(readmfg -s MANUFACTURER)
PRODUCTCLASS=$(readmfg -s PRODUCT_CLASS)
MODELNAME=$(readmfg -s MODEL_NAME)
HARDWAREVERSION=$(readmfg -s HARDWARE_VERSION)
MANUFACTUREROUI=$(readmfg -H MANUFACTURER_OUI)
SERIALNUMBER=$(readmfg -s SERIAL_NUMBER)
GPON_SERIAL_NUMBER=$(readmfg -p PON_SERIAL)
WLAN_SSID=$(readmfg -s WLAN_SSID)
WLAN_PASSPHRASE=$(readmfg -s WLAN_PASSPHRASE)
if [ -n "$GPON_SERIAL_NUMBER" ]; then
	GPON_VENDOR_ID="${GPON_SERIAL_NUMBER:0:4}"
	GPON_EQUIPMENT_ID="$(echo $MODELNAME | cut -c1-20)"
	GPON_HARDWARE_VERSION="$(echo $HARDWAREVERSION | cut -c1-14)"
fi

echo "export HWMACADDRESS=\"$HWMACADDRESS\"" >> /var/etc/environment
echo "export MANUFACTURER=\"$MANUFACTURER\"" >> /var/etc/environment
echo "export PRODUCTCLASS=\"$PRODUCTCLASS\"" >> /var/etc/environment
echo "export MODELNAME=\"$MODELNAME\"" >> /var/etc/environment
echo "export HARDWAREVERSION=\"$HARDWAREVERSION\"" >> /var/etc/environment
echo "export MANUFACTUREROUI=\"$MANUFACTUREROUI\"" >> /var/etc/environment
echo "export SERIALNUMBER=\"$SERIALNUMBER\"" >> /var/etc/environment
echo "export WLAN_SSID=\"$WLAN_SSID\"" >> /var/etc/environment
echo "export WLAN_PASSPHRASE=\"$WLAN_PASSPHRASE\"" >> /var/etc/environment
if [ -n "$GPON_SERIAL_NUMBER" ]; then
	echo "export GPON_SERIAL_NUMBER=\"$GPON_SERIAL_NUMBER\"" >> /var/etc/environment
	echo "export GPON_VENDOR_ID=\"$GPON_VENDOR_ID\"" >> /var/etc/environment
	echo "export GPON_EQUIPMENT_ID=\"$GPON_EQUIPMENT_ID\"" >> /var/etc/environment
	echo "export GPON_HARDWARE_VERSION=\"$GPON_HARDWARE_VERSION\"" >> /var/etc/environment
fi
