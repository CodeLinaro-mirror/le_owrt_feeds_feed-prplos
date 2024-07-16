#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=miniupnpd-prpl
PKG_RELEASE:=1

PKG_VERSION:=gen_miniupnpd_2_3_3_v0.3.9
PKG_SOURCE:=miniupnpd-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/soft.at.home/forks/miniupnpd/-/archive/$(PKG_VERSION)
PKG_HASH:=752cc748f6a46f1313ff4ca6e5e36fb6831a190b5c8f0a8d387ae9aede1dfbee
PKG_BUILD_DIR:=$(BUILD_DIR)/miniupnpd-$(PKG_VERSION)

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
	--leasefile \
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
