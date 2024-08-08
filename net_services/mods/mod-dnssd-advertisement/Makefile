include $(TOPDIR)/rules.mk

PKG_NAME:=mod-dnssd-advertisement
PKG_VERSION:=v0.4.6
SHORT_DESCRIPTION:=Ambiorix module to configure the tr181-dnssd advertise module

PKG_SOURCE:=mod-dnssd-advertisement-v0.4.6.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-dnssd-advertisement/-/archive/v0.4.6
PKG_HASH:=81786c5cf81245537f1b3021dca1070c0adcc9af564d114fc874beafdec357a4
PKG_BUILD_DIR:=$(BUILD_DIR)/mod-dnssd-advertisement-v0.4.6
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-dnssd-advertisement
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxp
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libamxj
  DEPENDS += +libsahtrace
  DEPENDS += +tr181-dnssd
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Ambiorix module to configure the tr181-dnssd advertise module
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
