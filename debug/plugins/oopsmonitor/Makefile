# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/oopsmonitor/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=oopsmonitor
PKG_VERSION:=v1.2.3
SHORT_DESCRIPTION:=Plugin to track kernel oopses

PKG_SOURCE:=oopsmonitor-v1.2.3.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/oopsmonitor/-/archive/v1.2.3
PKG_HASH:=4a9dc4c4229c79bcd9e8131af058733735501ce95d73bcbe3d56f8f1ab46d4f5
PKG_BUILD_DIR:=$(BUILD_DIR)/oopsmonitor-v1.2.3
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=oopsmonitor

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_SAH_AMX_OOPSMONITOR_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_SAH_AMX_OOPSMONITOR_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Plugins
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/oopsmonitor
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libsahtrace
  DEPENDS += +amxrt
  DEPENDS += +libfiletransfer
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Plugin to track kernel oopses
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_OOPSMONITOR_ORDER=$(CONFIG_SAH_AMX_OOPSMONITOR_ORDER) CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_USER=$(CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_USER) CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_GROUP=$(CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_GROUP) CONFIG_SAH_AMX_OOPSMONITOR_DEFAULT_PARSING=$(CONFIG_SAH_AMX_OOPSMONITOR_DEFAULT_PARSING))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_OOPSMONITOR_ORDER=$(CONFIG_SAH_AMX_OOPSMONITOR_ORDER) CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_USER=$(CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_USER) CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_GROUP=$(CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_GROUP) CONFIG_SAH_AMX_OOPSMONITOR_DEFAULT_PARSING=$(CONFIG_SAH_AMX_OOPSMONITOR_DEFAULT_PARSING))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_OOPSMONITOR_ORDER=$(CONFIG_SAH_AMX_OOPSMONITOR_ORDER) CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_USER=$(CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_USER) CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_GROUP=$(CONFIG_SAH_AMX_OOPSMONITOR_RUN_AS_GROUP) CONFIG_SAH_AMX_OOPSMONITOR_DEFAULT_PARSING=$(CONFIG_SAH_AMX_OOPSMONITOR_DEFAULT_PARSING))
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
