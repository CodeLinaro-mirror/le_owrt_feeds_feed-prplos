#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=miniupnpd-prpl
PKG_RELEASE:=2

PKG_VERSION:=PCF-1957_fix_delete_port_mapping_action
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=PCF-1957_fix_delete_port_mapping_action
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/mirrors/miniupnpd.git
PKG_MIRROR_HASH:=93b0edfa5d1271d9e6bd6aded0a5f0af2c2f1586a6462e28eb0f4e66f4d728bf
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

PKG_MAINTAINER:=
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:miniupnp_project:miniupnpd

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/version.mk

define Package/miniupnpd-prpl
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:= \
	+libcap-ng \
	+libmnl \
	+libuuid \
	+libamxb \
	+libamxc \
	+libamxd \
	+libamxo \
	+libamxp \
	+tr181-firewall
  PROVIDES:=miniupnpd-iptables
  CONFLICTS:=miniupnpd-iptables miniupnpd-nftables
  TITLE:=Lightweight UPnP IGD, NAT-PMP & PCP daemon
  SUBMENU:=Firewall
  URL:=https://miniupnp.tuxfamily.org/
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	echo "$(VERSION_NUMBER)" | tr '() ' '_' >$(PKG_BUILD_DIR)/os.openwrt
endef

CONFIGURE_PATH = miniupnpd
CONFIGURE_ARGS = \
	$(if $(CONFIG_IPV6),--ipv6) \
	--igd2 \
	--portinuse \
	--firewall=amx \
	--disable-fork \
	--vendorcfg \
	--strict

MAKE_PATH = $(CONFIGURE_PATH)

TARGET_CFLAGS += $(FPIC) -flto
TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

ifeq ($(ALLOW_RESERVED_ADDR),y)
	TARGET_CFLAGS += -DALLOW_RESERVED_ADDR
endif

define Package/miniupnpd-prpl/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/miniupnpd $(1)/usr/sbin/miniupnpd
endef

$(eval $(call BuildPackage,miniupnpd-prpl))
