include $(TOPDIR)/rules.mk

PKG_NAME:=mod-routing-bird2
PKG_VERSION:=v1.0.0
SHORT_DESCRIPTION:=Support of the OSPF and BGP configuration through TR-181 interface using bird2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-routing-bird2.git
PKG_SOURCE_VERSION:=FEAT-343_FEAT-471
PKG_HASH:=skip
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

PKG_RELEASE:=1

TARGET_LDFLAGS += -L$(STAGING_DIR)/lib # libsahtrace is not in /usr/lib for some reason
CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Modules
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/core/modules/mod-routing-bird2
  DEPENDS += +libamxc
  DEPENDS += +libamxp
  DEPENDS += +libamxm
  DEPENDS += +libamxo
  DEPENDS += +libsahtrace
  DEPENDS += +bird2
  DEPENDS += +bird2c
  KCONFIG:=CONFIG_TCP_MD5SIG=y
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	$(SHORT_DESCRIPTION)
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
