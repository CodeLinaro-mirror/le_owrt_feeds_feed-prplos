# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/ssh-server/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=ssh-server
PKG_VERSION:=v0.8.2
SHORT_DESCRIPTION:=Process Controller Data Model - dropbear

PKG_SOURCE:=ssh-server-v0.8.2.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/ssh-server/-/archive/v0.8.2
PKG_HASH:=8caa521c752c637c119051f55260d95f7db183bae2ff07f2bf7dc5a9eb38caa4
PKG_BUILD_DIR:=$(BUILD_DIR)/ssh-server-v0.8.2
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=ssh-server

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_SAH_AMX_SSH_SERVER_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_SAH_AMX_SSH_SERVER_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/ssh-server
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +libamxm
  DEPENDS += +amxrt
  DEPENDS += +mod-dmext
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Process Controller Data Model - dropbear
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_SSH_SERVER_ORDER=$(CONFIG_SAH_AMX_SSH_SERVER_ORDER) CONFIG_SAH_AMX_SSH_SERVER_SOP=$(CONFIG_SAH_AMX_SSH_SERVER_SOP) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_SSH_SERVER_ORDER=$(CONFIG_SAH_AMX_SSH_SERVER_ORDER) CONFIG_SAH_AMX_SSH_SERVER_SOP=$(CONFIG_SAH_AMX_SSH_SERVER_SOP) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_SSH_SERVER_ORDER=$(CONFIG_SAH_AMX_SSH_SERVER_ORDER) CONFIG_SAH_AMX_SSH_SERVER_SOP=$(CONFIG_SAH_AMX_SSH_SERVER_SOP) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY))
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
