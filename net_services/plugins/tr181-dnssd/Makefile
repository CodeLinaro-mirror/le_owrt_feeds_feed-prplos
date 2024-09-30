include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-dnssd
PKG_VERSION:=v0.5.12
SHORT_DESCRIPTION:=dns service discovery plugin

PKG_SOURCE:=tr181-dnssd-v0.5.12.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dnssd/-/archive/v0.5.12
PKG_HASH:=73e9dc60a68faac46a995cf023d0bad4622c5a200a8d036037ea385784bb5e06
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-dnssd-v0.5.12
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-dnssd

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_SAH_AMX_TR181_DNSSD_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_SAH_AMX_TR181_DNSSD_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dnssd
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +libamxm
  DEPENDS += +libamxj
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  DEPENDS += +umdns
  DEPENDS += +rpcd
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	dns service discovery plugin
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DNSSD_ORDER=$(CONFIG_SAH_AMX_TR181_DNSSD_ORDER) CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_GROUP))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DNSSD_ORDER=$(CONFIG_SAH_AMX_TR181_DNSSD_ORDER) CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_GROUP))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DNSSD_ORDER=$(CONFIG_SAH_AMX_TR181_DNSSD_ORDER) CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DNSSD_RUN_AS_GROUP))
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
