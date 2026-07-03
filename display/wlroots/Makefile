#
# Copyright (C) 2026 Consult Red
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=wlroots
PKG_VERSION:=0.20.1
PKG_RELEASE:=1

#GIT Source:
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/wlroots/wlroots.git
PKG_SOURCE_VERSION:=a7f20066270c042799ae70b71dfa4d561ba85121
PKG_MIRROR_HASH:=86b83cf70a4cc572bb49932ec57422277d151870a8f66ad21007d86d02abb7b6

PKG_BUILD_FLAGS:=gc-sections
PKG_CPE_ID:=cpe:/a:freedesktop:wlroots

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(INCLUDE_DIR)/meson.mk

MESON_ARGS += \
    -Dxwayland=disabled \
    -Dexamples=true \
    -Dbackends=drm

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/wlroots
  SECTION:=display
  CATEGORY:=Display
  TITLE:=wlroots
  DEPENDS:= \
    +libdrm +libpixman +pnpids +libdisplay-info +libliftoff +libudev-zero +libseat +libxkbcommon +wayland +wayland-protocols +hwdata-dev
endef

# Package description; a more verbose description on what our package does
define Package/wlroots/description
  wlroots wayland compositor
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.{a,so*} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/wlroots/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/*.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,wlroots))
