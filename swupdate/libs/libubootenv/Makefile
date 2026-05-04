# 
# Copyright (C) 2024 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libubootenv
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=v0.3.6
PKG_SOURCE_URL:=https://github.com/sbabic/libubootenv
PKG_MIRROR_HASH:=8c6ccb3ee7656c548a93346c8792ce9c0aea7f77003b1dd3af652a6357b180cc
PKG_HASH:=5507339628b5caf244e1ff9d58cb3fa534b16beb

PKG_MAINTAINER:=Mohamed-nour TOUMI <mohamed.toumi_ext@softathome.com>
PKG_LICENSE:=BSD 2-Clause Plus Patent License
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libubootenv
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Library to access U-Boot environment variables
  URL:=https://github.com/sbabic/libubootenv
  DEPENDS:=+zlib +libyaml
endef

define Package/libubootenv/description
  libubootenv is a library that provides a hardware independent way to access 
  to U-Boot environment. U-Boot environment is a storage area where U-Boot stores 
  configuration variables, including network settings, boot commands, and other 
  firmware-level configurations.
endef

define Package/fw-printenv
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=U-Boot environment tools
  URL:=https://github.com/sbabic/libubootenv
  DEPENDS:=+libubootenv +libyaml
endef

define Package/fw-printenv/description
  Command line tools to read and modify U-Boot environment variables.
  Includes fw_printenv and fw_setenv utilities.
endef

CMAKE_OPTIONS += \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DCMAKE_BUILD_TYPE=Release

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libuboot.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libubootenv.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libubootenv.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libubootenv/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libubootenv.so* $(1)/usr/lib/
endef

define Package/fw-printenv/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/fw_printenv $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/fw_setenv $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_DATA) ./files/fw_env.config $(1)/etc/
endef

$(eval $(call BuildPackage,libubootenv))
$(eval $(call BuildPackage,fw-printenv))
