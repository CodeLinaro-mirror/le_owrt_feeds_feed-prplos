#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=opennds-prpl
PKG_RELEASE:=1

PKG_VERSION:=10.2.0
PKG_SOURCE:=opennds-prpl-stable-10.2.y_v0.1.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/mirrors/opennds/-/archive/prpl/stable-10.2.y_v0.1.0
PKG_HASH:=c8bc1e2df031d4f4c64c00ff43749fdb2901ad78a6a826d6557e9499f339d4a9
PKG_BUILD_DIR:=$(BUILD_DIR)/opennds-prpl-stable-10.2.y_v0.1.0

PKG_MAINTAINER:=Rob White <rob@blue-wave.net>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/opennds-prpl
  SUBMENU:=Captive Portals
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+libmicrohttpd-no-ssl
  TITLE:=open Network Demarcation Service
  URL:=https://gitlab.com/prpl-foundation/mirrors/opennds
  CONFLICTS:=nodogsplash opennds
endef

define Package/opennds-prpl/description
  openNDS (open Network Demarcation Service) is a high performance, small footprint, Captive Portal.
  It provides a border control gateway between a public local area network and the Internet.
  It supports all scenarios ranging from small stand alone venues through to large mesh networks with multiple portal entry points.
  Both the client driven Captive Portal Detection method (CPD) and gateway driven Captive Portal Identification method (CPI - RFC 8910 and RFC 8908) are supported.
  This version uses nftables.
endef

define Package/opennds-prpl/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/opennds $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ndsctl $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib/opennds
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/binauth/binauth_log.sh $(1)/usr/lib/opennds/
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/libs/libopennds.sh $(1)/usr/lib/opennds/
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/libs/get_client_interface.sh $(1)/usr/lib/opennds/
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/libs/client_params.sh $(1)/usr/lib/opennds/
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/libs/authmon.sh $(1)/usr/lib/opennds/
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/libs/dnsconfig.sh $(1)/usr/lib/opennds/
	$(CP) $(PKG_BUILD_DIR)/forward_authentication_service/libs/download_resources.sh $(1)/usr/lib/opennds/
endef

$(eval $(call BuildPackage,opennds-prpl))
