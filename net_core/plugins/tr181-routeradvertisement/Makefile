# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/tr181-routeradvertisement/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-routeradvertisement
PKG_VERSION:=v0.21.3
SHORT_DESCRIPTION:=Implementation of Device

PKG_SOURCE:=tr181-routeradvertisement-v0.21.3.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-routeradvertisement/-/archive/v0.21.3
PKG_HASH:=20ced6f30a8983bdea10a91a81496c4eb7e91a2f3a1c7a2cc529c88f0b387680
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-routeradvertisement-v0.21.3
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-routeradvertisement

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S40$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K60$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-routeradvertisement
  DEPENDS += +amxrt
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libamxp
  DEPENDS += +libsahtrace
  DEPENDS += +mod-dmext
  DEPENDS += +libnetmodel
  DEPENDS += +rpcd
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Implementation of Device.RouterAdvertisement object of the TR-181 datamodel
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_USER=$(CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_USER) CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_GROUP=$(CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_GROUP))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_USER=$(CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_USER) CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_GROUP=$(CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_GROUP))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_USER=$(CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_USER) CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_GROUP=$(CONFIG_SAH_SERVICES_AMX-TR181ROUTERADVERTISEMENT_RUN_AS_GROUP))
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
