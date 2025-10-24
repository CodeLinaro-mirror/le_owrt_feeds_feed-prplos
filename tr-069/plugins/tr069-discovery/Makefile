include $(TOPDIR)/rules.mk

PKG_NAME:=tr069-discovery
PKG_VERSION:=v0.2.0
SHORT_DESCRIPTION:=ACS discovery via DHCP

PKG_SOURCE:=tr069-discovery-v0.2.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr069-discovery/-/archive/v0.2.0
PKG_HASH:=72dfe39e8e72d3698da68df7f7007504948441e0131677c05c833fbe74dcfc50
PKG_BUILD_DIR:=$(BUILD_DIR)/tr069-discovery-v0.2.0

PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr069-discovery

PKG_RELEASE:=1

define INGInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	if [[ "${CONFIG_PACKAGE_procd}" != "y" ]]; then \
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_TR069_DISCOVERY_ORDER)$(COMPONENT); \
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_TR069_DISCOVERY_ORDER)$(COMPONENT); \
	fi
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Utilities
  TITLE:=tr069-discovery
  DEPENDS += +libamxrt
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +libsahtrace
  DEPENDS += +uriparser
  DEPENDS += +libnetmodel
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	ACS discovery via DHCP
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_TR069_DISCOVERY_ORDER=$(CONFIG_TR069_DISCOVERY_ORDER) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_TR069_DISCOVERY_ORDER=$(CONFIG_TR069_DISCOVERY_ORDER) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))

	$(call INGInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_TR069_DISCOVERY_ORDER=$(CONFIG_TR069_DISCOVERY_ORDER) CONFIG_PACKAGE_procd=$(CONFIG_PACKAGE_procd))
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
