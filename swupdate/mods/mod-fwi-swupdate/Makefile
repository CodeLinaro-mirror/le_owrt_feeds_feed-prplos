include $(TOPDIR)/rules.mk

PKG_NAME:=mod-fwi-swupdate
PKG_VERSION:=v0.5.0
SHORT_DESCRIPTION:=FirmwareImage upgrade for wrt

PKG_SOURCE:=mod-fwi-swupdate-v0.5.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-fwi-swupdate/-/archive/v0.5.0
PKG_HASH:=7b86c47d0e04e324ce7e4c124c1692eb0ff5a305c9ffa31ab76cb2b8f7483d79
PKG_BUILD_DIR:=$(BUILD_DIR)/mod-fwi-swupdate-v0.5.0
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1
PKG_BUILD_DEPENDS += libsahtrace

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-fwi-swupdate
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxm
  DEPENDS += +libamxo
  DEPENDS += +libamxb
  DEPENDS += +libfiletransfer
  DEPENDS += +amxrt
  DEPENDS += +swupdate
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	FirmwareImage upgrade for wrt
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_FWI_FLASH_PARTITIONS=$(CONFIG_FWI_FLASH_PARTITIONS) CONFIG_SWUPDATE_TARGET_HW_VERSION=$(CONFIG_SWUPDATE_TARGET_HW_VERSION))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_FWI_FLASH_PARTITIONS=$(CONFIG_FWI_FLASH_PARTITIONS) CONFIG_SWUPDATE_TARGET_HW_VERSION=$(CONFIG_SWUPDATE_TARGET_HW_VERSION))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_FWI_FLASH_PARTITIONS=$(CONFIG_FWI_FLASH_PARTITIONS) CONFIG_SWUPDATE_TARGET_HW_VERSION=$(CONFIG_SWUPDATE_TARGET_HW_VERSION))
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
