# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dhcpv6client/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-dhcpv6client
PKG_VERSION:=v1.12.5
SHORT_DESCRIPTION:=TR-181 compatible DHCPv6 client

PKG_SOURCE:=tr181-dhcpv6client-v1.12.5.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dhcpv6client/-/archive/v1.12.5
PKG_HASH:=7600fb042ba325079a9d173c6e70d89dd8cf8d974604ca9f47aba2aae64ddf3b
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-dhcpv6client-v1.12.5
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-dhcpv6client

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S25$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K75$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-dhcpv6client
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxd
  DEPENDS += +libamxj
  DEPENDS += +libamxm
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +amxrt
  DEPENDS += +libsahtrace
  DEPENDS += +libdhcpoptions
  DEPENDS += +libnetmodel
  DEPENDS += +mod-netmodel
  DEPENDS += +mod-dmext
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 compatible DHCPv6 client
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_GROUP) CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_SENTOPTION_17=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_SENTOPTION_17) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_GROUP) CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_SENTOPTION_17=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_SENTOPTION_17) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_USER) CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_RUN_AS_GROUP) CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_SENTOPTION_17=$(CONFIG_SAH_AMX_TR181_DHCPV6CLIENT_SENTOPTION_17) CONFIG_PRPL_CPE_OPMODE_EXTENDER=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_PRPL_CPE_OPMODE_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY))
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
