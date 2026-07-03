include $(TOPDIR)/rules.mk

PKG_NAME:=kmsxx
PKG_VERSION:=2.4.133
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tomba/kmsxx.git
PKG_SOURCE_VERSION:=4a7836fe42a7bc0664d912246c5fbf17f240d152
PKG_MIRROR_HASH:=5d50a9cba5313549f0d9f8f4f5e80cd530dc3cb662c5d300393649c9ad3b1587

PKG_LICENSE:=MPL
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

MESON_ARGS += -Dpykms=disabled

PKG_BUILD_DEPENDS:= libfmt libdrm libevdev

define Package/kmsxx
  SECTION:=display
  CATEGORY:=Display
  TITLE:=kmsxx - Test utilities for dri device
  DEPENDS:= +libfmt +libdrm +libevdev
endef

define Package/kmsxx/description
  kmsxx - Provides kmtest to allow testing of dri device
endef

define Package/kmsxx/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/kms++/libkms++.so* $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/kms++util/libkms++util.so* $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/utils/kms* $(1)/usr/bin
endef

$(eval $(call BuildPackage,kmsxx))
