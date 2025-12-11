# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/ambiorix/modules/amxb_backends/amxb_usp/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=mod-amxb-usp
PKG_VERSION:=v5.6.1
SHORT_DESCRIPTION:=USP backend implementation for amxb

PKG_SOURCE:=amxb_usp-v5.6.1.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/ambiorix/modules/amxb_backends/amxb_usp/-/archive/v5.6.1
PKG_HASH:=558a5bccfa0ed38c16bc9b607456d685896837d7d49c1cb0fcd7f5aea47a0d29
PKG_BUILD_DIR:=$(BUILD_DIR)/amxb_usp-v5.6.1
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/ambiorix/modules/amxb_backends/amxb_usp
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libimtp
  DEPENDS += +libusp
  DEPENDS += +libuspi
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	USP backend implementation for amxb
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_MOD_AMXB_USP_INSTALL_DIR=$(CONFIG_SAH_MOD_AMXB_USP_INSTALL_DIR) CONFIG_SAH_MOD_AMXB_USP_REQUIRES_DEVICE_PREFIX=$(CONFIG_SAH_MOD_AMXB_USP_REQUIRES_DEVICE_PREFIX))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_MOD_AMXB_USP_INSTALL_DIR=$(CONFIG_SAH_MOD_AMXB_USP_INSTALL_DIR) CONFIG_SAH_MOD_AMXB_USP_REQUIRES_DEVICE_PREFIX=$(CONFIG_SAH_MOD_AMXB_USP_REQUIRES_DEVICE_PREFIX))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_MOD_AMXB_USP_INSTALL_DIR=$(CONFIG_SAH_MOD_AMXB_USP_INSTALL_DIR) CONFIG_SAH_MOD_AMXB_USP_REQUIRES_DEVICE_PREFIX=$(CONFIG_SAH_MOD_AMXB_USP_REQUIRES_DEVICE_PREFIX))
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
