include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-syslog
PKG_VERSION:=v1.6.8
SHORT_DESCRIPTION:=TR-181 compatible syslog

PKG_SOURCE:=tr181-syslog-v1.6.8.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-syslog/-/archive/v1.6.8
PKG_HASH:=67e2101dc4b2abc08a473cd5e5bc7ee83260fe3ee34ee8ce3e2bf88922cc968b
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-syslog-v1.6.8
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-syslog

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S12$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K88$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-syslog
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libamxb
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  DEPENDS += +amxrt
  DEPENDS += +mod-dmext
  DEPENDS += +libopenssl
  DEPENDS += +logrotate
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 compatible syslog
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
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

$(eval $(call BuildPackage,$(PKG_NAME)))
