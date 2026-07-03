include $(TOPDIR)/rules.mk

PKG_NAME:=libxkbcommon
PKG_VERSION:=1.13.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/lfs-book/libxkbcommon/archive/v1.13.1/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_HASH:=04e3bf1ab0858a26218576d956d83ebb3ec9c583402b8807b454250be10775b1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

MESON_ARGS += \
    -Denable-x11=false \
	-Denable-wayland=false

define Package/libxkbcommon
  SECTION:=display
  CATEGORY:=Display
  TITLE:=libxkbcommon - a keyboard keymap compiler and support library
  DEPENDS:= \
	+wayland +libxml2
endef

define Package/libxkbcommon/description
  libxkbcommon - a keyboard keymap compiler and support library which processes keymaps as defined by the XKB (X Keyboard Extension) specification (minus some legacy features). 
  It also contains a module for handling Compose and dead keys, a separate registry library for listing available keyboard layouts and a fair set of CLI tools to support keyboard layouts development. 
  libxkbcommon is the standard keymap handling library on Wayland and is used by compositors, toolkits, and applications to handle keyboard state and translate key events into characters and actions.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.{a,so*} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libxkbcommon/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/*.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,libxkbcommon))
