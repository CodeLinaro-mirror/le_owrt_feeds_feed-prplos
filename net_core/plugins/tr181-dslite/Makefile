# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dslite/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-dslite
PKG_VERSION:=v0.14.1
SHORT_DESCRIPTION:=TR-181 compatible DSLite plugin

PKG_SOURCE:=tr181-dslite-v0.14.1.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dslite/-/archive/v0.14.1
PKG_HASH:=29e532e5e6f182688bd0f460df5d6fa31d2919383e8af13dc116e5842380f76e
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-dslite-v0.14.1
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-dslite

PKG_RELEASE:=1

define SAHInit/Install
	install -d $(1)/etc/rc.d/
	if [[ "${CONFIG_PACKAGE_procd}" != "y" ]]; then \
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/S$(CONFIG_SAH_AMX_TR181_DSLITE_ORDER)$(COMPONENT); \
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/K$(CONFIG_SAH_AMX_TR181_DSLITE_ORDER)$(COMPONENT); \
	fi
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dslite
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libamxb
  DEPENDS += +libsahtrace
  DEPENDS += +amxrt
  DEPENDS += +mod-netmodel
  DEPENDS += +libnetmodel
  DEPENDS += +libcares
  DEPENDS += +kmod-ip6-tunnel
  DEPENDS += +kmod-iptunnel6
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 compatible DSLite plugin
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_DSLITE_ORDER=$(CONFIG_SAH_AMX_TR181_DSLITE_ORDER) CONFIG_SAH_AMX_TR181_DSLITE_CARES_RPATH=$(CONFIG_SAH_AMX_TR181_DSLITE_CARES_RPATH) CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_GROUP) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_DSLITE_ORDER=$(CONFIG_SAH_AMX_TR181_DSLITE_ORDER) CONFIG_SAH_AMX_TR181_DSLITE_CARES_RPATH=$(CONFIG_SAH_AMX_TR181_DSLITE_CARES_RPATH) CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_GROUP) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))

	$(call SAHInit/Install,$(PKG_INSTALL_DIR))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_DSLITE_ORDER=$(CONFIG_SAH_AMX_TR181_DSLITE_ORDER) CONFIG_SAH_AMX_TR181_DSLITE_CARES_RPATH=$(CONFIG_SAH_AMX_TR181_DSLITE_CARES_RPATH) CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DSLITE_RUN_AS_GROUP) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))
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
