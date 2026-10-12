include $(TOPDIR)/rules.mk

PKG_NAME:=tr181-bgp-ospf
PKG_VERSION:=v0.0.1
PKG_RELEASE:=1

SHORT_DESCRIPTION:=BGP & OSPF interface through Device.Routing. datamodel on the TR-069 and TR-369 interfaces

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/plugins/tr181-bgp-ospf.git
PKG_SOURCE_VERSION:=PCF-2769
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
CMAKE_INSTALL:=1

CMAKE_OPTIONS += \
    -DTR181_BGP_OSPF_START_ORDER=$(CONFIG_TR181_BGP_OSPF_START_ORDER) \
    -DTR181_BGP_OSPF_STOP_ORDER=$(CONFIG_TR181_BGP_OSPF_STOP_ORDER) \
    -DTR181_BGP_OSPF_RUN_AS_USER=$(CONFIG_TR181_BGP_OSPF_RUN_AS_USER) \
    -DTR181_BGP_OSPF_RUN_AS_GROUP=$(CONFIG_TR181_BGP_OSPF_RUN_AS_GROUP)

TARGET_LDFLAGS += -L$(STAGING_DIR)/lib # libsahtrace is not in /usr/lib for some reason
CMAKE_BINARY_SUBDIR := build

define Package/$(PKG_NAME)
	CATEGORY:=prpl Foundation
	TITLE:=tr181-bgp-ospf
	MAINTAINER:=Inango <support@inango-systems.com>

	DEPENDS += +libamxb
	DEPENDS += +libamxc
	DEPENDS += +libamxp
	DEPENDS += +libamxrt
	DEPENDS += +libamxd
	DEPENDS += +libamxo
	DEPENDS += +libamxm
	DEPENDS += +libnetmodel
	DEPENDS += +libsahtrace
	DEPENDS += +libipat
endef

define Package/$(PKG_NAME)/description
tr181-bgp-ospf - BGP & OSPF dynamic routing support for prplOS
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

define Package/$(PKG_NAME)/config
        source "$(SOURCE)/Config.in"
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
