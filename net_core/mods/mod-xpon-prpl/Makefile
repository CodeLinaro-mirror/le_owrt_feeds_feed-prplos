include $(TOPDIR)/rules.mk

PKG_NAME:=mod-xpon-prpl
PKG_VERSION:=sah-next_v1.0.7
SHORT_DESCRIPTION:=xpon prpl module

PKG_SOURCE:=mod-xpon-prpl-sah-next_v1.0.7.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-xpon-prpl/-/archive/sah-next_v1.0.7
PKG_HASH:=4d2a8c6a280758780eff9ac7321bd67b3b7e1f5081e9e4635b0c99dc4af2e131
PKG_BUILD_DIR:=$(BUILD_DIR)/mod-xpon-prpl-sah-next_v1.0.7
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-xpon-prpl
  DEPENDS += +libamxc
  DEPENDS += +libamxm
  DEPENDS += +libamxd
  DEPENDS += +libamxp
  DEPENDS += +libamxb
  DEPENDS += +libsahtrace
  DEPENDS += +ubus
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	xpon prpl module
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
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

$(eval $(call BuildPackage,$(PKG_NAME)))
