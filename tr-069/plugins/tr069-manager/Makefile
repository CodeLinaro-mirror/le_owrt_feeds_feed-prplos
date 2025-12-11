# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=tr069-manager
PKG_VERSION:=v1.38.6
SHORT_DESCRIPTION:=TR069 Manager

PKG_SOURCE:=tr069-manager-v1.38.6.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager/-/archive/v1.38.6
PKG_HASH:=9b12ea55b9976775cbd086f1d53dd77b6832d29320b640d58fcd8929c0759282
PKG_BUILD_DIR:=$(BUILD_DIR)/tr069-manager-v1.38.6
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr069-manager

PKG_RELEASE:=1

define SAHInit/Install
	install -d $(1)/etc/rc.d/
	ln -sfr $(1)/etc/init.d/cwmp_plugin $(1)/etc/rc.d/S$(CONFIG_SAH_AMX_TR069_MANAGER_ORDER)cwmp_plugin
	ln -sfr $(1)/etc/init.d/cwmp_plugin $(1)/etc/rc.d/K$(CONFIG_SAH_AMX_TR069_MANAGER_ORDER)cwmp_plugin
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr069-manager
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libamxa
  DEPENDS += +mod-dmext
  DEPENDS += +amxrt
  DEPENDS += +libsahtrace
  DEPENDS += +libwebsockets4-full
  DEPENDS += +libevent2
  DEPENDS += +libtr69-engine
  DEPENDS += +uriparser
  DEPENDS += +libcares
  DEPENDS += +libnetmodel
  DEPENDS += +libfiletransfer
  DEPENDS += +libgmap-client
  DEPENDS += +libxml2
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR069 Manager
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR069_MANAGER_ORDER=$(CONFIG_SAH_AMX_TR069_MANAGER_ORDER) CONFIG_SAH_AMX_TR069_MANAGER_CERTIFICATE_NO_PEM=$(CONFIG_SAH_AMX_TR069_MANAGER_CERTIFICATE_NO_PEM) CONFIG_SAH_AMX_TR069_MANAGER_USE_GSDM=$(CONFIG_SAH_AMX_TR069_MANAGER_USE_GSDM))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR069_MANAGER_ORDER=$(CONFIG_SAH_AMX_TR069_MANAGER_ORDER) CONFIG_SAH_AMX_TR069_MANAGER_CERTIFICATE_NO_PEM=$(CONFIG_SAH_AMX_TR069_MANAGER_CERTIFICATE_NO_PEM) CONFIG_SAH_AMX_TR069_MANAGER_USE_GSDM=$(CONFIG_SAH_AMX_TR069_MANAGER_USE_GSDM))

	$(call SAHInit/Install,$(PKG_INSTALL_DIR))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR069_MANAGER_ORDER=$(CONFIG_SAH_AMX_TR069_MANAGER_ORDER) CONFIG_SAH_AMX_TR069_MANAGER_CERTIFICATE_NO_PEM=$(CONFIG_SAH_AMX_TR069_MANAGER_CERTIFICATE_NO_PEM) CONFIG_SAH_AMX_TR069_MANAGER_USE_GSDM=$(CONFIG_SAH_AMX_TR069_MANAGER_USE_GSDM))
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
