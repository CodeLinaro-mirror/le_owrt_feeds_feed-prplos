include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-bootstatus
PKG_VERSION:=0.1.0
SHORT_DESCRIPTION:=TR-181 device lifecycle & boot telemetry plugin

PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-bootstatus-0.1.0
PKG_MAINTAINER:=Softdel
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-bootstatus

PKG_RELEASE:=1

# In-tree location of the component source in this monorepo.
TR181_BOOTSTATUS_SRCDIR:=$(TOPDIR)/../../components/core/plugins/tr181-bootstatus

define SAHInit/Install
	install -d $(1)/etc/rc.d/
ifneq ($(CONFIG_PACKAGE_procd),y)
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/S$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER)$(COMPONENT)
	ln -sfr $(1)/etc/init.d/$(COMPONENT) $(1)/etc/rc.d/K$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER)$(COMPONENT)
endif
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-bootstatus
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  DEPENDS += +amxrt
  DEPENDS += +deviceinfo-manager
  DEPENDS += +mod-sahtrace
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 device lifecycle & boot telemetry plugin
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) $(TR181_BOOTSTATUS_SRCDIR)/. $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER) CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_USER) CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_GROUP) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER) CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_USER) CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_GROUP) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))

	$(call SAHInit/Install,$(PKG_INSTALL_DIR))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include PKG_CONFIG=$(PKG_CONFIG) CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_ORDER) CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_USER) CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_BOOTSTATUS_RUN_AS_GROUP) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))
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
