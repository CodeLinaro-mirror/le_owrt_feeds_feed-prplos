# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/tr181-ip/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=ip-manager
PKG_VERSION:=v1.52.0
SHORT_DESCRIPTION:=Implementation of Device

PKG_SOURCE:=tr181-ip-v1.52.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-ip/-/archive/v1.52.0
PKG_HASH:=1f19d6652720aed1906392b3eca159540f5b4a29942124154367fcab30fa237a
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-ip-v1.52.0
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=ip-manager

PKG_RELEASE:=1

define SAHInit/Install
	install -d $(1)/etc/rc.d/
	if [[ "${CONFIG_PACKAGE_procd}" != "y" ]]; then \
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/S$(CONFIG_SAH_AMX_TR181_IP_START_ORDER)$(COMPONENT); \
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/K$(CONFIG_SAH_AMX_TR181_IP_STOP_ORDER)$(COMPONENT); \
	fi
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-ip
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxj
  DEPENDS += +libamxm
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +libsahtrace
  DEPENDS += +mod-dmext
  DEPENDS += +mod-netmodel
  DEPENDS += +libnetmodel
  DEPENDS += +libipat
  DEPENDS += +rpcd
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Implementation of Device.IP of the TR-181 datamodel
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_IP_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_IP_RUN_AS_USER) CONFIG_SAH_AMX_TR181_IP_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_IP_RUN_AS_GROUP) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd) CONFIG_SAH_AMX_TR181_IP_START_ORDER=$(CONFIG_SAH_AMX_TR181_IP_START_ORDER) CONFIG_SAH_AMX_TR181_IP_STOP_ORDER=$(CONFIG_SAH_AMX_TR181_IP_STOP_ORDER))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_IP_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_IP_RUN_AS_USER) CONFIG_SAH_AMX_TR181_IP_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_IP_RUN_AS_GROUP) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd) CONFIG_SAH_AMX_TR181_IP_START_ORDER=$(CONFIG_SAH_AMX_TR181_IP_START_ORDER) CONFIG_SAH_AMX_TR181_IP_STOP_ORDER=$(CONFIG_SAH_AMX_TR181_IP_STOP_ORDER))

	$(call SAHInit/Install,$(PKG_INSTALL_DIR))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_IP_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_IP_RUN_AS_USER) CONFIG_SAH_AMX_TR181_IP_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_IP_RUN_AS_GROUP) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd) CONFIG_SAH_AMX_TR181_IP_START_ORDER=$(CONFIG_SAH_AMX_TR181_IP_START_ORDER) CONFIG_SAH_AMX_TR181_IP_STOP_ORDER=$(CONFIG_SAH_AMX_TR181_IP_STOP_ORDER))
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
