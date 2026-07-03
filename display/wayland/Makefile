include $(TOPDIR)/rules.mk

PKG_NAME:=wayland
PKG_VERSION:=1.25.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/wayland/wayland.git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_MIRROR_HASH:=b3d927e2b09b1bc361bf44674bc1543c119b24003e21d690fe4e138c29d084a1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_BUILD_PARALLEL:=1
PKG_CONFIG_LIBDIR:=$(STAGING_DIR_HOSTPKG)/lib/pkgconfig

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

define Package/wayland
	SECTION:=display
	CATEGORY:=Display
	TITLE:=wayland - protocol for a compositor to talk to its clients as well as a library implementation of the protocol
	DEPENDS:=+libffi
endef

MESON_ARGS+= -Dscanner=false -Dlibraries=true -Ddocumentation=false --build.pkg-config-path $(STAGING_DIR)/host/lib/pkgconfig/ --pkg-config-path $(STAGING_DIR_HOSTPKG)/lib/pkgconfig
MESON_HOST_ARGS += -Dscanner=true -Dlibraries=false -Ddocumentation=false -Dtests=false
HOST_BUILD_PARALLEL:=1
HOST_CONFIGURE_PARALLEL := 1

PKG_BUILD_DEPENDS:=wayland/host libffi
HOST_BUILD_DEPENDS:=libffi/host libxml2/host

PKG_INSTALL:=1

define Package/wayland/description
	Wayland is a project to define a protocol for a compositor to talk to
	its clients as well as a library implementation of the protocol.  The
	compositor can be a standalone display server running on Linux kernel
	modesetting and evdev input devices, an X application, or a wayland
	client itself.  The clients can be traditional applications, X servers
	(rootless or fullscreen) or other display servers.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.{a,so*} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/src/wayland-scanner $(STAGING_DIR_HOST)/bin/
	$(INSTALL_DIR) $(STAGING_DIR)/bin
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/src/wayland-scanner $(STAGING_DIR)/bin/
	$(INSTALL_DIR) $(STAGING_DIR_HOST)/usr/bin
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/src/wayland-scanner $(STAGING_DIR_HOST)/usr/bin/
	$(INSTALL_DIR) $(STAGING_DIR)/usr/bin
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/src/wayland-scanner $(STAGING_DIR)/usr/bin/

	$(INSTALL_DIR) $(STAGING_DIR_HOST)/usr/share/pkgconfig
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/meson-private/*.pc $(STAGING_DIR_HOST)/usr/share/pkgconfig/
	$(INSTALL_DIR) $(STAGING_DIR)/usr/share/pkgconfig
	$(CP) $(HOST_BUILD_DIR)/openwrt-build/meson-private/*.pc $(STAGING_DIR)/usr/share/pkgconfig/

	$(INSTALL_DIR) $(STAGING_DIR_HOST)/usr/share/wayland-protocols
	$(CP) $(HOST_BUILD_DIR)/protocol/* $(STAGING_DIR_HOST)/usr/share/wayland-protocols/
endef

define Package/wayland/install
	$(INSTALL_DIR) $(1)/usr/share/wayland-protocols
	$(CP) $(PKG_BUILD_DIR)/protocol/* $(1)/usr/share/wayland-protocols/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/src/*.so* $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/cursor/*.so* $(1)/usr/lib
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.{a,so*} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,wayland))
