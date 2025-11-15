include $(TOPDIR)/rules.mk

PKG_NAME:=prpl-webui
PKG_VERSION:=0.2.8
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause-Patent

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/api/v4/projects/40213611/packages/generic/$(PKG_NAME)/$(PKG_VERSION)
PKG_HASH:=73782dea9d1d401d57e0955b660c9c92928c640ff4bdf8e085f19312490351f6

PKG_UNPACK=$(HOST_TAR) -C $(PKG_BUILD_DIR) -xzf $(DL_DIR)/$(PKG_SOURCE)

include $(INCLUDE_DIR)/package.mk

define Package/prpl-webui
  TITLE:=Reference webUI for prplOS using the EmberJS framework
  CATEGORY:=prpl Foundation
  SUBMENU:=Utilities
  DEPENDS:=+tr181-rest-api +lighttpd-mod-rewrite
endef

define Package/prp-webui/conffiles
/etc/lighttpd/conf.d/51-prplos-webui.conf
endef

define Package/prpl-webui/description
 This package contains reference web UI implementation for prplOS using the
 EmberJS framework.
endef

define Build/Compile/Default
endef
Build/Compile = $(Build/Compile/Default)

define Package/prpl-webui/install
	$(INSTALL_DIR) $(1)/www
	$(CP) $(PKG_BUILD_DIR)/dist/* $(1)/www/
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,prpl-webui))
