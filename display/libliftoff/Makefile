include $(TOPDIR)/rules.mk

PKG_NAME:=libliftoff
PKG_VERSION:=v0.5.0
PKG_VERSION_SHORT:=0.5.0
PKG_RELEASE:=3

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/emersion/libliftoff/-/archive/$(PKG_VERSION)/
PKG_HASH:=3309218c3137a70faada653690802b514e4e46d9b38e7d9d5948ffcc4831f3b1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libliftoff
  SECTION:=display
  CATEGORY:=Display
  TITLE:=libliftoff - provides functions that can work with KMS planes
  URL:=https://gitlab.freedesktop.org/emersion/libliftoff
  DEPENDS:=+libdrm
endef

define Package/libliftoff/description
  libliftoff - provides functions that can work with KMS planes.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/$(PKG_NAME).{a,so*} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/$(PKG_NAME).pc $(1)/usr/lib/pkgconfig/
endef

define Package/libliftoff/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/$(PKG_NAME).so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libliftoff))
