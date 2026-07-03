include $(TOPDIR)/rules.mk

PKG_NAME:=prpl-lvgl-sample-apps
PKG_VERSION:=0.3
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/examples/prpl-lvgl-sample-apps.git
PKG_SOURCE_VERSION:=feat_FEAT-333
PKG_MIRROR_HASH:=skip

PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE
PKG_BUILD_PARALLEL:=1
PKG_CONFIG_LIBDIR:=$(STAGING_DIR_HOSTPKG)/lib/pkgconfig


CMAKE_OPTIONS += -DCMAKE_SYSROOT=$(STAGING_DIR)
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk


define Package/prpl-lvgl-sample-apps
	SECTION:=display
	CATEGORY:=Display
	TITLE:=prpl-lvgl-sample-apps
	DEPENDS:=+libstdcpp +wayland +libxkbcommon +wayland-protocols
endef


HOST_BUILD_PARALLEL:=1
HOST_CONFIGURE_PARALLEL := 1


PKG_INSTALL:=1

define Package/prpl-lvgl-sample-apps/description
	Basic applications to demo LVGL/wayland on prpl
	Currently includes just a screensaver with a clock & a logo
endef

define Package/prpl-lvgl-sample-apps/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/bin/* $(1)/usr/bin
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,prpl-lvgl-sample-apps))

