include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-routeradvertisement
PKG_VERSION:=v0.18.6
SHORT_DESCRIPTION:=Implementation of Device

PKG_SOURCE:=tr181-routeradvertisement-v0.18.6.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-routeradvertisement/-/archive/v0.18.6
PKG_HASH:=42ad68c3ce42f4c1e1db64e85d10601f37cab52853d439dbd05bba432e3b751c
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-routeradvertisement-v0.18.6
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

define SAHBackupRestore/Install
	install -d ${PKG_INSTALL_DIR}/usr/lib/hgwcfg/backup
	install -d ${PKG_INSTALL_DIR}/usr/lib/hgwcfg/restore
	install -d ${PKG_INSTALL_DIR}/usr/lib/hgwcfg/import
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/usr/lib/hgwcfg/backup/B40$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/usr/lib/hgwcfg/restore/R40$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/usr/lib/hgwcfg/import/R40$(COMPONENT)
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
	$(call SAHBackupRestore/Install)
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
