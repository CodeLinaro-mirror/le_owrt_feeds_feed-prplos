#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=dnsmasq-prpl
PKG_RELEASE:=2

PKG_VERSION:=2.90
PKG_SOURCE:=dnsmasq-prpl-stable-2.90_v0.1.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/mirrors/dnsmasq/-/archive/prpl/stable-2.90_v0.1.0
PKG_HASH:=4d0cb3f41095ea1554bfcffc876b252326e78c3a1e26ed8d7fb3ee89194d5071
PKG_BUILD_DIR:=$(BUILD_DIR)/dnsmasq-prpl-stable-2.90_v0.1.0

PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING
PKG_CPE_ID:=cpe:/a:thekelleys:dnsmasq

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=lto
PKG_ASLR_PIE_REGULAR:=1

include $(INCLUDE_DIR)/package.mk

define Package/dnsmasq-prpl
  SECTION:=net
  CATEGORY:=prpl Foundation
  SUBMENU:=Upstream Backports/Forks
  TITLE:=DNS and DHCP server
  URL:=http://www.thekelleys.org.uk/dnsmasq/
  DEPENDS:=+libubus
  USERID:=dnsmasq=453:dnsmasq=453
  CONFLICTS:=dnsmasq
endef

define Package/dnsmasq-prpl/description
  It is intended to provide coupled DNS and DHCP service to a LAN.
endef

COPTS = -DHAVE_UBUS -DHAVE_POLL_H \
	$(if $(CONFIG_IPV6),,-DNO_IPV6)

COPTS += -DNO_AUTH -DNO_IPSET -DNO_ID

MAKE_FLAGS := \
	$(TARGET_CONFIGURE_OPTS) \
	CFLAGS="$(TARGET_CFLAGS) $(TARGET_CPPFLAGS)" \
	LDFLAGS="$(TARGET_LDFLAGS)" \
	COPTS="$(COPTS)" \
	PREFIX="/usr"

define Package/dnsmasq-prpl/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/dnsmasq $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/dhcp.conf $(1)/etc/config/dhcp
	$(INSTALL_CONF) ./files/dnsmasq.conf $(1)/etc/dnsmasq.conf
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/dnsmasq.init $(1)/etc/init.d/dnsmasq
	$(INSTALL_DIR) $(1)/etc/hotplug.d/dhcp
	$(INSTALL_DIR) $(1)/etc/hotplug.d/neigh
	$(INSTALL_DIR) $(1)/etc/hotplug.d/ntp
	$(INSTALL_DIR) $(1)/etc/hotplug.d/tftp
	$(INSTALL_DATA) ./files/dnsmasqsec.hotplug $(1)/etc/hotplug.d/ntp/25-dnsmasqsec
	$(INSTALL_DIR) $(1)/usr/share/dnsmasq
	$(INSTALL_CONF) ./files/dhcpbogushostname.conf $(1)/usr/share/dnsmasq/
	$(INSTALL_CONF) ./files/rfc6761.conf $(1)/usr/share/dnsmasq/
	$(INSTALL_DIR) $(1)/usr/lib/dnsmasq
	$(INSTALL_BIN) ./files/dhcp-script.sh $(1)/usr/lib/dnsmasq/dhcp-script.sh
	$(INSTALL_DIR) $(1)/usr/share/acl.d
	$(INSTALL_DATA) ./files/dnsmasq_acl.json $(1)/usr/share/acl.d/
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/50-dnsmasq-migrate-resolv-conf-auto.sh $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/50-dnsmasq-migrate-ipset.sh $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,dnsmasq-prpl))
