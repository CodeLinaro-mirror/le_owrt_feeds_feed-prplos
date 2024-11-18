include $(TOPDIR)/rules.mk

PKG_NAME:=netmodel
PKG_VERSION:=v2.17.11
SHORT_DESCRIPTION:=Network Model plugin

PKG_SOURCE:=netmodel-v2.17.11.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/netmodel/-/archive/v2.17.11
PKG_HASH:=70ea9c3a6116c7acddea3e0315c662daedf37e50be5b8bb05c7e67096d3bf793
PKG_BUILD_DIR:=$(BUILD_DIR)/netmodel-v2.17.11
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=netmodel

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_SAH_AMX_NETMODEL_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_SAH_AMX_NETMODEL_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/netmodel
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libsahtrace
  DEPENDS += +libdhcpoptions
  DEPENDS += +amxrt
  DEPENDS += +mod-dmext
  DEPENDS += +SAH_AMX_NETMODEL_DIRECT_SOCKET:libpcb
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Network Model plugin
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_NETMODEL_ORDER=$(CONFIG_SAH_AMX_NETMODEL_ORDER) CONFIG_SAH_AMX_NETMODEL_RUN_AS_USER=$(CONFIG_SAH_AMX_NETMODEL_RUN_AS_USER) CONFIG_SAH_AMX_NETMODEL_RUN_AS_GROUP=$(CONFIG_SAH_AMX_NETMODEL_RUN_AS_GROUP) CONFIG_SAH_AMX_NETMODEL_DIRECT_SOCKET=$(CONFIG_SAH_AMX_NETMODEL_DIRECT_SOCKET))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_NETMODEL_ORDER=$(CONFIG_SAH_AMX_NETMODEL_ORDER) CONFIG_SAH_AMX_NETMODEL_RUN_AS_USER=$(CONFIG_SAH_AMX_NETMODEL_RUN_AS_USER) CONFIG_SAH_AMX_NETMODEL_RUN_AS_GROUP=$(CONFIG_SAH_AMX_NETMODEL_RUN_AS_GROUP) CONFIG_SAH_AMX_NETMODEL_DIRECT_SOCKET=$(CONFIG_SAH_AMX_NETMODEL_DIRECT_SOCKET))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_NETMODEL_ORDER=$(CONFIG_SAH_AMX_NETMODEL_ORDER) CONFIG_SAH_AMX_NETMODEL_RUN_AS_USER=$(CONFIG_SAH_AMX_NETMODEL_RUN_AS_USER) CONFIG_SAH_AMX_NETMODEL_RUN_AS_GROUP=$(CONFIG_SAH_AMX_NETMODEL_RUN_AS_GROUP) CONFIG_SAH_AMX_NETMODEL_DIRECT_SOCKET=$(CONFIG_SAH_AMX_NETMODEL_DIRECT_SOCKET))
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
