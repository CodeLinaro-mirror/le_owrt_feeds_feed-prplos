include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-vrrp
PKG_VERSION:=PCF-2772
SHORT_DESCRIPTION:=TR-181 Virtual Redundancy Router Protocol

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-vrrp.git
PKG_SOURCE_VERSION:=PCF-2772
PKG_MIRROR_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Inango <support@inango-systems.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

COMPONENT:=tr181-vrrp

PKG_RELEASE:=1

PKG_CONFIG_DEPENDS += CONFIG_TR181_VRRP_INSTALL_ACTION_SCRIPT_WIFI
PKG_CONFIG_DEPENDS += CONFIG_PACKAGE_prplmesh-process-manager
PKG_CONFIG_DEPENDS += CONFIG_TR181_VRRP_INSTALL_ACTION_SCRIPT_IPV6
PKG_CONFIG_DEPENDS += CONFIG_PACKAGE_ip-manager
PKG_CONFIG_DEPENDS += CONFIG_PACKAGE_tr181-routeradvertisement
PKG_CONFIG_DEPENDS += CONFIG_PACKAGE_dhcpv6s-manager

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_INSTALL:=1
CMAKE_OPTIONS += \
	-DSTART_ORDER=23 \
	-DSTOP_ORDER=88 \
	-DINSTALL_ACTION_SCRIPT_WIFI=$(if $(and $(filter y,$(CONFIG_TR181_VRRP_INSTALL_ACTION_SCRIPT_WIFI)),$(filter y,$(CONFIG_PACKAGE_prplmesh-process-manager))),ON,OFF) \
	-DINSTALL_ACTION_SCRIPT_IPV6=$(if $(and $(filter y,$(CONFIG_TR181_VRRP_INSTALL_ACTION_SCRIPT_IPV6)),$(filter y,$(CONFIG_PACKAGE_ip-manager)),$(filter y,$(CONFIG_PACKAGE_tr181-routeradvertisement)),$(filter y,$(CONFIG_PACKAGE_dhcpv6s-manager))),ON,OFF) \

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=TR-181 Managers
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-vrrp
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxd
  DEPENDS += +libamxb
  DEPENDS += +libamxo
  DEPENDS += +libamxm
  DEPENDS += +libamxj
  DEPENDS += +libamxrt
  DEPENDS += +libsahtrace
  DEPENDS += +libnetmodel
  DEPENDS += +mod-dmext
  DEPENDS += +TR181_VRRP_INSTALL_ACTION_SCRIPT_WIFI:amx-cli
  DEPENDS += +TR181_VRRP_INSTALL_ACTION_SCRIPT_IPV6:amx-cli
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	TR-181 compatible VRRP
endef

define Package/$(PKG_NAME)/config
  source "$(SOURCE)/Config.in"
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
