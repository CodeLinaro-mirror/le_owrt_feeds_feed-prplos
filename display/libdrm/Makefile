include $(TOPDIR)/rules.mk

PKG_NAME:=libdrm
PKG_VERSION:=2.4.133
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://dri.freedesktop.org/libdrm/
PKG_SOURCE:=libdrm-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=v$(PKG_VERSION)
PKG_HASH:=fc68f9d0ba2ea63c9432a299e14fea09fad7a8a66e8039fcd7802ca59f77b4f5

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

#MESON_ARGS += \

define Package/libdrm
  SECTION:=display
  CATEGORY:=Display
  TITLE:=libdrm - Provides a userspace library for accessing the direct rendering manager on operating systems that support the ioctl interface
endef

define Package/libdrm/description
  libdrm - Libdrm provides a userspace library for accessing the direct rendering manager (DRM) on operating systems that support the ioctl interface. Libdrm is a low-level library, typically used by graphics drivers such as the Mesa DRI drivers, the X drivers, libva and similar projects.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/$(PKG_NAME).{a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/$(PKG_NAME).pc $(1)/usr/lib/pkgconfig/
endef

define Package/libdrm/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/*.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,libdrm))
