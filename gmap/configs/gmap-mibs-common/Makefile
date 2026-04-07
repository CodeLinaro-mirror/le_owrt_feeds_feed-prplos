# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling (version v2.39.3)
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/gmap/mibs/gmap-mibs-common/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=gmap-mibs-common
PKG_VERSION:=proj_prplware-v4.2.0_optimizations_v0.1.0
SHORT_DESCRIPTION:=Generic mib files for the gmap service

PKG_SOURCE:=gmap-mibs-common-proj_prplware-v4.2.0_optimizations_v0.1.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/gmap/mibs/gmap-mibs-common/-/archive/proj_prplware-v4.2.0_optimizations_v0.1.0
PKG_HASH:=b927c3bb65ecfcc9b96635ed722fb08abdc753c3b9eced57fc76791042ee0bb4
PKG_BUILD_DIR:=$(BUILD_DIR)/gmap-mibs-common-proj_prplware-v4.2.0_optimizations_v0.1.0
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=gMap
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/gmap/mibs/gmap-mibs-common
  DEPENDS += +gmap-server
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxj
  DEPENDS += +libamxm
  DEPENDS += +libsahtrace
  DEPENDS += +libamxo
  DEPENDS += +libgmap-client
  DEPENDS += +libgmap-ext
  DEPENDS += +mod-dmext
  DEPENDS += +libipat
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Generic mib files for the gmap service
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_WAN-ACCESS=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_WAN-ACCESS) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_PRIORITY=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_PRIORITY) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_LOCATION=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_LOCATION) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_INFORMATION=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_INFORMATION))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_WAN-ACCESS=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_WAN-ACCESS) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_PRIORITY=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_PRIORITY) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_LOCATION=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_LOCATION) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_INFORMATION=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_INFORMATION))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_WAN-ACCESS=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_WAN-ACCESS) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_PRIORITY=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_PRIORITY) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_LOCATION=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_LOCATION) CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_INFORMATION=$(CONFIG_SAH_SERVICES_GMAP-MIBS-COMMON_INFORMATION))
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
