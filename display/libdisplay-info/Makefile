include $(TOPDIR)/rules.mk

PKG_NAME:=libdisplay-info
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/emersion/libdisplay-info.git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_MIRROR_HASH:=6ae6e87a7435bb87132abc14235649b652acb45d15828f5b228491f6ce08e96c

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libdisplay-info
  SECTION:=display
  CATEGORY:=Display
  TITLE:=libdisplay-info - EDID and DisplayID library.
  DEPENDS:=+libudev-zero +pnpids
endef

define Package/libdisplay-info/description
  libdisplay-info is an EDID and DisplayID library.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/$(PKG_NAME).{a,so*} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/$(PKG_NAME).pc $(1)/usr/lib/pkgconfig/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libdisplay-info/* $(1)/usr/include/
endef

define Package/libdisplay-info/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/*.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,libdisplay-info))
