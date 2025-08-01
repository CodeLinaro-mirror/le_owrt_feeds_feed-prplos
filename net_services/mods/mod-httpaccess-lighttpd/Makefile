# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/modules/mod-httpaccess-lighttpd/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=mod-httpaccess-lighttpd
PKG_VERSION:=v0.7.0
SHORT_DESCRIPTION:=Module to manage HTTP accesses for lighttpd server

PKG_SOURCE:=mod-httpaccess-lighttpd-v0.7.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-httpaccess-lighttpd/-/archive/v0.7.0
PKG_HASH:=8d2047adb7576a076e4f31568bf12e39d9854a45aadb8dc9560fceceb20c69f1
PKG_BUILD_DIR:=$(BUILD_DIR)/mod-httpaccess-lighttpd-v0.7.0
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-httpaccess-lighttpd
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxp
  DEPENDS += +libamxm
  DEPENDS += +libsahtrace
  DEPENDS += +lighttpd
  DEPENDS += +lighttpd-mod-access
  DEPENDS += +lighttpd-mod-setenv
  DEPENDS += +lighttpd-mod-proxy
  DEPENDS += +lighttpd-mod-auth
  DEPENDS += +lighttpd-mod-authn_file
  DEPENDS += +lighttpd-mod-fastcgi
  DEPENDS += +tr181-httpaccess
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Module to manage HTTP accesses for lighttpd server
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_MOD_HTTPACCESS_LIGHTTPD_FORCEFUL_TIMEOUT_SHUTDOWN=$(CONFIG_SAH_MOD_HTTPACCESS_LIGHTTPD_FORCEFUL_TIMEOUT_SHUTDOWN))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_MOD_HTTPACCESS_LIGHTTPD_FORCEFUL_TIMEOUT_SHUTDOWN=$(CONFIG_SAH_MOD_HTTPACCESS_LIGHTTPD_FORCEFUL_TIMEOUT_SHUTDOWN))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_MOD_HTTPACCESS_LIGHTTPD_FORCEFUL_TIMEOUT_SHUTDOWN=$(CONFIG_SAH_MOD_HTTPACCESS_LIGHTTPD_FORCEFUL_TIMEOUT_SHUTDOWN))
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP) ./files/* $(1)/; \
	fi
	find $(1) -name *.a -exec rm {} +;
	find $(1) -name *.h -exec rm {} +;
	find $(1) -name *.pc -exec rm {} +;
endef

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
