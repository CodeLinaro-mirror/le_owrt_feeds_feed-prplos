include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-device
PKG_VERSION:=v0.21.0
SHORT_DESCRIPTION:=TR-181 compatible Device plugin

PKG_SOURCE:=tr181-device-v0.21.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-device/-/archive/v0.21.0
PKG_HASH:=838bae1058bb7b4d866d53cc4537ab836bee0c91a96618e76aafe3c45ec22442
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-device-v0.21.0
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-device

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_SAH_AMX_TR181_DEVICE_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_SAH_AMX_TR181_DEVICE_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-device
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libsahtrace
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +mod-dmext
  DEPENDS += +mod-dmproxy
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 compatible Device plugin
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DEVICE_ORDER=$(CONFIG_SAH_AMX_TR181_DEVICE_ORDER) CONFIG_SAH_AMX_TR181_DEVICE_RESET_HARD_ENABLE=$(CONFIG_SAH_AMX_TR181_DEVICE_RESET_HARD_ENABLE) CONFIG_SAH_AMX_TR181_DEVICE_OBUSPA_SUPPORT=$(CONFIG_SAH_AMX_TR181_DEVICE_OBUSPA_SUPPORT))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DEVICE_ORDER=$(CONFIG_SAH_AMX_TR181_DEVICE_ORDER) CONFIG_SAH_AMX_TR181_DEVICE_RESET_HARD_ENABLE=$(CONFIG_SAH_AMX_TR181_DEVICE_RESET_HARD_ENABLE) CONFIG_SAH_AMX_TR181_DEVICE_OBUSPA_SUPPORT=$(CONFIG_SAH_AMX_TR181_DEVICE_OBUSPA_SUPPORT))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DEVICE_ORDER=$(CONFIG_SAH_AMX_TR181_DEVICE_ORDER) CONFIG_SAH_AMX_TR181_DEVICE_RESET_HARD_ENABLE=$(CONFIG_SAH_AMX_TR181_DEVICE_RESET_HARD_ENABLE) CONFIG_SAH_AMX_TR181_DEVICE_OBUSPA_SUPPORT=$(CONFIG_SAH_AMX_TR181_DEVICE_OBUSPA_SUPPORT))
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
