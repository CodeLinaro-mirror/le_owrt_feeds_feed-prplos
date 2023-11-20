include $(TOPDIR)/rules.mk

PKG_NAME:=libusp
PKG_VERSION:=v2.6.4
SHORT_DESCRIPTION:=libusp can be used for converting USP protobuf messages to ambiorix variants and vice versa

PKG_SOURCE:=libusp-v2.6.4.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/soft.at.home/usp/libraries/libusp/-/archive/v2.6.4
PKG_HASH:=8e320f34ab0dd4d24994e4db43b0add49ffa3b3ad1f9ab75dca15fa1a675344b
PKG_BUILD_DIR:=$(BUILD_DIR)/libusp-v2.6.4
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BBF BSD-2-Clause-Patent
PKG_LICENSE:=LICENSE.BBF LICENSE.BSD

PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=usp
  SUBMENU:=Libraries
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/soft.at.home/usp/libraries/libusp
  DEPENDS += +libamxc
  DEPENDS += +libamxj
  DEPENDS += +libamxd
  DEPENDS += +libsahtrace
  DEPENDS += +libuspprotobuf
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	libusp can be used for converting USP protobuf messages to ambiorix variants and vice versa.
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include)
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
