include $(TOPDIR)/rules.mk

PKG_NAME:=libpixman
PKG_VERSION:=0.46
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/pixman/pixman.git
PKG_SOURCE_VERSION:=9cc163c9da0fb4da430641715313d95a6ec466d9
PKG_MIRROR_HASH:=696de890b73de59523d897dfbe81c02dac0ebc65f1a2a6866109c8ec983f6a6a

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libpixman
  SECTION:=display
  CATEGORY:=Display
  TITLE:=Pixman - Low level pixel manipulation library
endef

define Package/libpixman/description
  Pixman is a library that provides low-level pixel manipulation features such as image compositing and trapezoid rasterization.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/pixman-1
	$(CP) $(PKG_INSTALL_DIR)/usr/include/pixman-1/* $(1)/usr/include/pixman-1/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/$(PKG_NAME)-1.{a,so*} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/pixman-1.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libpixman/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/pixman/*.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,libpixman))
