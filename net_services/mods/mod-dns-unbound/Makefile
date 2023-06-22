include $(TOPDIR)/rules.mk

PKG_NAME:=mod-dns-unbound
PKG_VERSION:=v1.1.2
SHORT_DESCRIPTION:=Ambiorix module to manage Unbound as DNS forwarder

PKG_SOURCE:=mod-dns-unbound-v1.1.2.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-dns-unbound/-/archive/v1.1.2
PKG_HASH:=bf8449d2f29eeb953114270dc8c65fb34aa8e8c831aced0047f1132a06ed4e17
PKG_BUILD_DIR:=$(BUILD_DIR)/mod-dns-unbound-v1.1.2
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE


PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=amx
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-dns-unbound
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +libamxm
  DEPENDS += +libsahtrace
  DEPENDS += +unbound-daemon
  DEPENDS += +libfstrm
  DEPENDS += +libprotobuf-c
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Ambiorix module to manage Unbound as DNS forwarder
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
	find $(PKG_INSTALL_DIR) -name *.a -exec rm {} +;
	find $(PKG_INSTALL_DIR) -name *.h -exec rm {} +;
	find $(PKG_INSTALL_DIR) -name *.pc -exec rm {} +;
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP) ./files/* $(1)/; \
	fi
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
