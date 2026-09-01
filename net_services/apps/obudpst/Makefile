#
# Copyright (c) 2020, Broadband Forum
# Copyright (c) 2020, AT&T Communications
# Copyright (c) 2025, Gemtek
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=obudpst
PKG_VERSION:=9.0.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/BroadbandForum/obudpst.git
PKG_SOURCE_VERSION:=7b0f9a015f3851634fdcdfc0f3c11fcea939af4c
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz
PKG_MIRROR_HASH:=1acbe74bb9542d6754bd04034855f2fc7d9dde7d12cb59e538f7fee6b1104b4c

PKG_RELEASE:=1
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_OPTIONS += -DDISABLE_INT_TIMER=ON
CMAKE_OPTIONS += -DRATE_LIMITING=ON

define Package/obudpst
	CATEGORY:=prpl Foundation
	SUBMENU:=Utilities
	DEPENDS+=+libopenssl
	TITLE:=Open Broadband-UDP Speed Test (OB-UDPST)
endef

define Build/Install
	:
endef

define Package/obudpst/description
	Open Broadband-UDP Speed Test (OB-UDPST) is a client/server software utility to demonstrate
	one approach of doing IP capacity measurements described by Broadband Forum TR-471.
endef

define Package/obudpst/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/udpst $(1)/usr/sbin/udpst
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOST)/obudpst
	$(CP) $(HOST_BUILD_DIR)/udpst $(STAGING_DIR_HOST)/obudpst/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,obudpst))
