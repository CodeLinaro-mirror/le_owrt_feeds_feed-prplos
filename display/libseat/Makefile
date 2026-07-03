include $(TOPDIR)/rules.mk

PKG_NAME:=libseat
PKG_VERSION:=0.9.3
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://git.sr.ht/~kennylevinsen/seatd
PKG_SOURCE_VERSION:=daa8196e10b180b8b0caeafa8e5f860eb1bd6706
PKG_MIRROR_HASH:=66303da5e1190053bab89da1265db58697701c844dbea46e2b40265f626b0312

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

MESON_ARGS += \
    -Dserver=disabled \
    -Dlibseat-logind=disabled \
    -Dman-pages=disabled

define Package/libseat
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=libseat - seat management library
endef

define Package/libseat/description
  libseat provides a universal seat management API used by wlroots.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/$(PKG_NAME).{a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/$(PKG_NAME).pc $(1)/usr/lib/pkgconfig/
endef

define Package/libseat/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/*.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,libseat))
