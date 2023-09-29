#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=miniupnpd
PKG_RELEASE:=1

PKG_VERSION:=gen_miniupnpd_2_3_3_v0.3.1
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/soft.at.home/forks/miniupnpd/-/archive/$(PKG_VERSION)
PKG_HASH:=5f5d7fb7ad226a25d6857257c79ce04411d3889ace2c5ed747f1b530560df3b7
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

UNPACK_CMD=$(HOST_TAR) -xf "$(DL_DIR)/$(PKG_SOURCE)" -C $(PKG_BUILD_DIR) --strip-components=2 $(PKG_NAME)-$(PKG_VERSION)/miniupnpd

PKG_MAINTAINER:=
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:miniupnp_project:miniupnpd

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1
PKG_CONFIG_DEPENDS += CONFIG_MINIUPNP_TR181-FIREWALL
PKG_CONFIG_DEPENDS += CONFIG_MINIUPNP_IPTABLES

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/version.mk

define Package/miniupnpd/Default
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:= \
	+libcap-ng \
	+libmnl \
	+libuuid
  PROVIDES:=miniupnpd
  TITLE:=Lightweight UPnP IGD, NAT-PMP & PCP daemon
  SUBMENU:=Firewall
  URL:=https://miniupnp.tuxfamily.org/
endef

define Package/miniupnpd-amx
  $(call Package/miniupnpd/Default)
  DEPENDS+= \
	+libamxb \
	+libamxc \
	+libamxd \
	+libamxo \
	+libamxp \
	+tr181-firewall
  TITLE+= (amx)
  VARIANT:=amx
endef

define Package/miniupnpd-iptables
  $(call Package/miniupnpd/Default)
  DEPENDS+= \
	+IPV6:ip6tables \
	+IPV6:libip6tc \
	+iptables \
	+libip4tc \
	+libnetfilter-conntrack
  TITLE+= (iptables)
  VARIANT:=iptables
endef

define Package/miniupnpd-nftables
  $(call Package/miniupnpd/Default)
  DEPENDS+= \
	+libnftnl
  TITLE+= (nftables)
  VARIANT:=nftables
  DEFAULT_VARIANT:=1
  CONFLICTS:=miniupnpd-iptables
endef

define Package/miniupnpd/conffiles/Default
/etc/config/upnpd
endef

Package/miniupnpd-amx/conffiles =
Package/miniupnpd-iptables/conffiles = $(Package/miniupnpd/conffiles/Default)
Package/miniupnpd-nftables/conffiles = $(Package/miniupnpd/conffiles/Default)

define Build/Prepare
	$(call Build/Prepare/Default)
	echo "$(VERSION_NUMBER)" | tr '() ' '_' >$(PKG_BUILD_DIR)/os.openwrt
endef

CONFIGURE_ARGS = \
	$(if $(CONFIG_IPV6),--ipv6) \
	--igd2 \
	--leasefile \
	--portinuse \
	--firewall=$(BUILD_VARIANT) \
	--disable-fork \
	--strict

TARGET_CFLAGS += $(FPIC)
TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

ifeq ($(BUILD_VARIANT),iptables)
	TARGET_CFLAGS += -flto
endif

ifeq ($(ALLOW_RESERVED_ADDR),y)
	TARGET_CFLAGS += -DALLOW_RESERVED_ADDR
endif

define Package/miniupnpd/install/Default
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/miniupnpd $(1)/usr/sbin/miniupnpd
endef

define Package/miniupnpd-iptables/install
	$(call Package/miniupnpd/install/Default,$1)
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_DIR) $(1)/usr/share/miniupnpd
	$(INSTALL_BIN) ./files/miniupnpd.defaults.iptables $(1)/etc/uci-defaults/99-miniupnpd
	$(INSTALL_DATA) ./files/firewall3.include $(1)/usr/share/miniupnpd/firewall.include
	$(INSTALL_BIN) ./files/miniupnpd.init $(1)/etc/init.d/miniupnpd
	$(INSTALL_CONF) ./files/upnpd.config $(1)/etc/config/upnpd
	$(INSTALL_DATA) ./files/miniupnpd.hotplug $(1)/etc/hotplug.d/iface/50-miniupnpd
endef

define Package/miniupnpd-nftables/install
	$(call Package/miniupnpd/install/Default,$1)
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_DIR) $(1)/usr/share/miniupnpd
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DIR) $(1)/usr/share/miniupnpd
	$(INSTALL_BIN) ./files/miniupnpd.init $(1)/etc/init.d/miniupnpd
	$(INSTALL_CONF) ./files/upnpd.config $(1)/etc/config/upnpd
	$(INSTALL_DATA) ./files/miniupnpd.hotplug $(1)/etc/hotplug.d/iface/50-miniupnpd
	$(INSTALL_BIN) ./files/miniupnpd.defaults.nftables $(1)/etc/uci-defaults/99-miniupnpd
	$(INSTALL_DATA) ./files/firewall4.include $(1)/usr/share/miniupnpd/firewall.include
	$(INSTALL_DIR) $(1)/usr/share/nftables.d
	$(CP) ./files/nftables.d/* $(1)/usr/share/nftables.d/
endef

define Package/miniupnpd-amx/install
	$(call Package/miniupnpd/install/Default,$1)
endef

$(eval $(call BuildPackage,miniupnpd-amx))
$(eval $(call BuildPackage,miniupnpd-iptables))
$(eval $(call BuildPackage,miniupnpd-nftables))
