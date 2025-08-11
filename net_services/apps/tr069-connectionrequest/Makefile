include $(TOPDIR)/rules.mk

PKG_NAME:=tr069-connectionrequest
PKG_VERSION:=1.0
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause-Patent

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr069-connectionrequest.git
PKG_SOURCE_VERSION:=PCF-1867_implement_tr069-connectionrequest
PKG_SOURCE_DATE:=2025-07-08
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

COMPONENT:=tr069-connectionrequest
BIN_NAME:=tr069-connectionrequest

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	CATEGORY:=prpl Foundation
	SUBMENU:=Utilities
	TITLE:=TR-069 Connection Request
	DEPENDS += +libupnp
	DEPENDS += +libamxb
	DEPENDS += +libamxc
	DEPENDS += +libamxp
	DEPENDS += +libamxd
	DEPENDS += +libamxo
	DEPENDS += +libamxm
endef

define Package/$(PKG_NAME)/description
	upnp-control-point
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(BIN_NAME) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_TR069_CONNECTIONREQUEST_ORDER)$(BIN_NAME)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(BIN_NAME) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_TR069_CONNECTIONREQUEST_ORDER)$(BIN_NAME)
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

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
