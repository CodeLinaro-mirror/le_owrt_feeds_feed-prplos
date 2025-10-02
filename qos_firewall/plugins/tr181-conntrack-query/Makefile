# WARNING: Automatically generated file using BAF (Build system Agnostic File) tooling
# WARNING: You should contribute changes to https://gitlab.com/prpl-foundation/components/core/plugins/tr181-conntrack-query/-/blob/main/baf.yml instead
include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-conntrack-query
PKG_VERSION:=v0.1.0
SHORT_DESCRIPTION:=tr181-conntrack-query interface plugin

PKG_SOURCE:=tr181-conntrack-query-v0.1.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-conntrack-query/-/archive/v0.1.0
PKG_HASH:=23cecc1f992140ece43ce611860e4844a460db0a6c59507f96f551dba052c13a
PKG_BUILD_DIR:=$(BUILD_DIR)/tr181-conntrack-query-v0.1.0
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-conntrack-query

PKG_RELEASE:=1

define SAHInit/Install
	install -d ${PKG_INSTALL_DIR}/etc/rc.d/
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/S$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER)$(COMPONENT)
	ln -sfr ${PKG_INSTALL_DIR}/etc/init.d/$(COMPONENT) ${PKG_INSTALL_DIR}/etc/rc.d/K$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER)$(COMPONENT)
endef

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-conntrack-query
  DEPENDS += +libamxb
  DEPENDS += +libamxc
  DEPENDS += +libamxm
  DEPENDS += +libamxd
  DEPENDS += +libamxo
  DEPENDS += +libamxp
  DEPENDS += +libsahtrace
  DEPENDS += +amxrt
  DEPENDS += +libnfnetlink
  DEPENDS += +libmnl
  DEPENDS += +kmod-nf-conntrack-netlink
  DEPENDS += +libnetfilter-conntrack
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	tr181-conntrack-query interface plugin
endef

define Build/Compile
	$(call Build/Compile/Default, STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PKG_CONFIG_PATH=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_USER) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_GROUP) CONFIG_PACKAGE_libnetfilter-conntrack=$(CONFIG_PACKAGE_libnetfilter-conntrack))
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install D=$(PKG_INSTALL_DIR) DEST=$(PKG_INSTALL_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_ACCESSPOINT=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_USER) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_GROUP) CONFIG_PACKAGE_libnetfilter-conntrack=$(CONFIG_PACKAGE_libnetfilter-conntrack))

	$(call SAHInit/Install)
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install D=$(STAGING_DIR) DEST=$(STAGING_DIR) STAGINGDIR=$(STAGING_DIR) CONFIGDIR=$(STAGING_DIR) PV=$(PKG_VERSION) PKG_CONFIG_LIBDIR=$(STAGING_DIR)/usr/lib/pkgconfig LIBDIR=/usr/lib INSTALL_LIB_DIR=/lib INSTALL_BIN_DIR=/bin RAW_VERSION=$(PKG_VERSION) HARDCO_HAL_DIR=$(STAGING_DIR)/usr/include CONFIG_ACCESSPOINT=$(CONFIG_PRPL_CPE_OPMODE_EXTENDER) CONFIG_GATEWAY=$(CONFIG_PRPL_CPE_OPMODE_GATEWAY) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_ORDER) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_USER=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_USER) CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_GROUP=$(CONFIG_SAH_AMX_TR181_CONNTRACK_QUERY_RUN_AS_GROUP) CONFIG_PACKAGE_libnetfilter-conntrack=$(CONFIG_PACKAGE_libnetfilter-conntrack))
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
