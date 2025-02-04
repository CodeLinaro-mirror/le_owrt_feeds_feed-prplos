include $(TOPDIR)/rules.mk

PKG_NAME:=dhcpv4-manager
PKG_VERSION:=sah-next_v2.13.1
SHORT_DESCRIPTION:=Implementation of Device

PKG_SOURCE:=tr181-dhcpv4-sah-next_v2.13.1.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dhcpv4/-/archive/sah-next_v2.13.1
PKG_HASH:=3e7aeac91fcc0e994001974bc8552201dd7e74887879d00812871712b9c29e5f
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-dhcpv4-sah-next_v2.13.1
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=dhcpv4-manager

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
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dhcpv4
  DEPENDS += +amxrt
  DEPENDS += +libamxc
  DEPENDS += +libamxj
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libamxs
  DEPENDS += +libamxm
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  DEPENDS += +mod-dmext
  DEPENDS += +mod-fw-amx
  DEPENDS += +libdhcpoptions
  DEPENDS += +rpcd
  DEPENDS += +ip-manager
  DEPENDS += +netmodel
  DEPENDS += +tr181-firewall
  DEPENDS += +time-manager
  DEPENDS += +dnsmasq-prpl
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Implementation of Device.DHCPv4.Server object of the TR-181 datamodel
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_USER=$(CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_USER) CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_GROUP=$(CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_GROUP))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_GATEWAY=$(CONFIG_GATEWAY) CONFIG_ACCESSPOINT=$(CONFIG_ACCESSPOINT) CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_USER=$(CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_USER) CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_GROUP=$(CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_GROUP))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_GATEWAY=$(CONFIG_GATEWAY) CONFIG_ACCESSPOINT=$(CONFIG_ACCESSPOINT) CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_USER=$(CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_USER) CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_GROUP=$(CONFIG_SAH_SERVICES_AMX-DHCPV4-MANAGER_RUN_AS_GROUP))
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
