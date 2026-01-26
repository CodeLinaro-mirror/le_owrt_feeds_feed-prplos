# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/wan-manager/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=wan-manager
PKG_VERSION:=v1.10.10
SHORT_DESCRIPTION:=TR-181 compatible plugin for advanced WAN mode configuration

PKG_SOURCE:=wan-manager-v1.10.10.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/wan-manager/-/archive/v1.10.10
PKG_HASH:=2e72ace3b95d9dfef41cacaa02c4c8c17df015843171d539b5c2d9f4b71e42ad
PKG_BUILD_DIR:=$(BUILD_DIR)/wan-manager-v1.10.10
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=wan-manager

PKG_RELEASE:=1

define SAHInit/Install
	install -d $(1)/etc/rc.d/
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/S$(CONFIG_SAH_AMX_WAN_MANAGER_ORDER)$(COMPONENT)
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/K$(CONFIG_SAH_AMX_WAN_MANAGER_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Plugins
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/wan-manager
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxm
  DEPENDS += +libamxo
  DEPENDS += +libamxj
  DEPENDS += +amxrt
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  DEPENDS += +mod-dmext
  DEPENDS += +libipat
  DEPENDS += +rpcd
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 compatible plugin for advanced WAN mode configuration
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_WAN_MANAGER_ORDER=$(CONFIG_SAH_AMX_WAN_MANAGER_ORDER) CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_USER=$(CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_USER) CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_GROUP=$(CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_GROUP))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_WAN_MANAGER_ORDER=$(CONFIG_SAH_AMX_WAN_MANAGER_ORDER) CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_USER=$(CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_USER) CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_GROUP=$(CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_GROUP))

	$(call SAHInit/Install,$(PKG_INSTALL_DIR))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_WAN_MANAGER_ORDER=$(CONFIG_SAH_AMX_WAN_MANAGER_ORDER) CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_USER=$(CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_USER) CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_GROUP=$(CONFIG_SAH_AMX_WAN_MANAGER_RUN_AS_GROUP))
	$(call SAHInit/Install,$(STAGING_DIR))
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
