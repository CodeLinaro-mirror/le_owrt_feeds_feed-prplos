include $(TOPDIR)/rules.mk

PKG_NAME:=wayland-protocols
PKG_VERSION:=1.48
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/wayland/$(PKG_NAME).git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_MIRROR_HASH:=b856b4cd63a01a891b72a8fae2ad93516ad7d946067156628bd8256fc539e657

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

define Package/wayland-protocols
  SECTION:=display
  CATEGORY:=Display
  TITLE:=Wayland protocol XML definitions
  DEPENDS:= +wayland
endef

define Package/wayland-protocols/install
	$(INSTALL_DIR) $(1)/usr/share/wayland-protocols
	$(CP) $(PKG_INSTALL_DIR)/usr/share/wayland-protocols/* $(1)/usr/share/wayland-protocols/
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOST)/share/wayland-protocols
	$(CP) $(HOST_INSTALL_DIR)/usr/share/wayland-protocols/* $(STAGING_DIR_HOST)/share/wayland-protocols/

	$(INSTALL_DIR) $(STAGING_DIR_HOST)/usr/bin
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/src/wayland-scanner $(STAGING_DIR_HOST)/usr/bin/
	
	$(INSTALL_DIR) $(STAGING_DIR_HOST)/lib/pkgconfig
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/meson-private/*.pc $(STAGING_DIR_HOST)/lib/pkgconfig/

	$(INSTALL_DIR) $(STAGING_DIR_HOST)/share/pkgconfig
	$(CP) $(HOST_INSTALL_DIR)/usr/share/pkgconfig/*.pc $(STAGING_DIR_HOST)/share/pkgconfig/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/wayland-protocols
	$(CP) $(PKG_INSTALL_DIR)/usr/include/wayland-protocols/* $(1)/usr/include/wayland-protocols/

	$(INSTALL_DIR) $(1)/usr/share/wayland-protocols
	$(CP) $(PKG_INSTALL_DIR)/usr/share/wayland-protocols/* $(1)/usr/share/wayland-protocols/

	$(INSTALL_DIR) $(1)/usr/share/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/share/pkgconfig/*.pc $(1)/usr/share/pkgconfig/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,wayland-protocols))
