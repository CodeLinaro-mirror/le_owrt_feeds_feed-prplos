#!/bin/sh
# SPDX-License-Identifier: BSD-2-Clause-Patent
#
# SPDX-FileCopyrightText: Copyright (c) 2026 SoftAtHome
#
# Description: Authenticate a FIT image if globally signed with a preload
#   signature and read the version stored in the FIT metadata.
#
# Usage:
#   get_fit_version <fit_image_path> [pub_key_path]
#
# Arguments:
#   fit_image_path   Path to the FIT image to authenticate and parse or
#                    path to an ext4 partitions containing FIT images
#                    (e.g. /dev/mmcblk0p23).
#                    For ext4 partitions, the FIT of the kernel expected
#                    to be named kernel.itb is used to retrieve the
#                    version since both kernel and rootfs shall have the
#                    same version.
#
#   pub_key_path     Path to the public PEM key to authenticate the FIT
#                    (optional). When a public key is provided, the
#                    script expects the FIT to be globally signed with a
#                    preload signature.
#

set -e
set -o pipefail

usage() {
	echo "Usage: $0 <fit_image_path> [pub_key_path]" >&2
}

PRELOAD_MAGIC="55425348"
HEADER_METADATA_LENGTH=64
FIT_MAGIC="d00dfeed"

if [ $# -lt 1 ] || \
   [ ! -e "$1" ] || \
   { [ -n "$2" ] && [ ! -f "$2" ]; }; then
	echo "Invalid arguments" >&2
	usage
	exit 1
fi

device="$1"
pubkey_path="$2"

mount_point=""
mounted=0
tmp_fit=""

# Handler to perform some cleanup on exit and errors
cleanup() {
	if [ "$mounted" -eq 1 ]; then
		umount "$mount_point" 2>/dev/null || true
	fi

	if [ -n "$mount_point" ] && [ -d "$mount_point" ]; then
		rmdir "$mount_point" 2>/dev/null || true
	fi

	if [ -n "$tmp_fit" ] && [ -f "$tmp_fit" ]; then
		rm -f "$tmp_fit" 2>/dev/null || true
	fi
}

trap cleanup EXIT INT TERM

# $1 infile
# $2 value size in 4-bytes blocks
# $3 value offset in 4-bytes blocks
# returns value as hex string
read_header_metadata_value() {
	echo $(dd if="$1" bs=4 count="$2" skip="$3" 2>/dev/null | hexdump -n 32 -e '32/1 "%02x"')
}

read_header_metadata_int() {
	echo $((0x$(read_header_metadata_value $@)))
}

# Returns the highest 2-power divisor between $1 and $2
# Maximum value is 4k
get_highest_divisor() {
	divisor=1
	arg1=$1
	arg2=$2
	while [ $divisor -lt 4096 ]; do
		new_divisor=$((divisor * 2))
		[ $((arg1 % new_divisor)) -eq 0 ] || break
		[ $((arg2 % new_divisor)) -eq 0 ] || break
		divisor=$new_divisor
	done
	echo $divisor
}

# $1 is input file
# $2 is data offset in bytes
# $3 is data length in bytes
# Raw data blob goes to stdout
extract_raw_blob() {
	offset=$2
	length=$3
	buffer_size=$(get_highest_divisor $offset $length)
	dd if="$1" bs=$buffer_size skip=$((offset/buffer_size)) count=$((length/buffer_size)) 2>/dev/null
}

data_offset=0
data_size=0

type=$(blkid -o value -s TYPE "$device")
if [ -n "$type" ] && [ "$type" = "ext4" ] ; then
	mount_point=$(mktemp -d /mnt/kernel.XXXXXX)
	if ! mount -t "$type" "$device" "$mount_point" ; then
		echo "Fail to mount $device on $mount_point" >&2
		exit 1
	fi
	mounted=1
	fit_device=$mount_point/kernel.itb
elif [ -n "$type" ] ; then
	echo "Unsupported partition: $type" >&2
	exit 1
else
	fit_device=$device
fi

# Read the first 4 bytes where the magic is located
fit_dev_magic=$(read_header_metadata_value "$fit_device" 1 0)

if [ -n "$pubkey_path" ] && [ "$fit_dev_magic" != "$PRELOAD_MAGIC" ] ; then
	echo "No preload magic found. A signature is mandatory when a public key is provided" >&2
	exit 1
elif [ -z "$pubkey_path" ] && [ "$fit_dev_magic" = "$PRELOAD_MAGIC" ] ; then
	echo "Preload magic found. Key must be provided" >&2
	usage
	exit 1
fi

if [ "$fit_dev_magic" = "$PRELOAD_MAGIC" ] ; then
	# Authenticate the FIT image. For now only rsa pss and sha256 are supported.
	if ! preload_check_sign -k "$pubkey_path" -a sha256,rsa4096 -p pss -f "$fit_device" > /dev/null ; then
		echo "Data authentication failed" >&2
		exit 1
	fi

	# Preload header size
	data_offset=4096
fi

if [ $data_offset -ne 0 ] ; then
	fit_dev_magic=$(read_header_metadata_value "$fit_device" 1 $((data_offset/4)))
fi

if [ $fit_dev_magic != "$FIT_MAGIC" ] ; then
	echo "Not a valid FIT image." >&2
	exit 1
fi

# Extract the data size from the FIT header
data_size=$(read_header_metadata_int "$fit_device" 1 $((data_offset/4 + 1)))

# Read the FIT metadata and retrieve the version information
tmp_fit=$(mktemp /tmp/fit.XXXXXX)
extract_raw_blob "$fit_device" $data_offset $data_size > "$tmp_fit"
fdtget -t s "$tmp_fit" / version
