include $(TOPDIR)/rules.mk

PKG_NAME:=prpl-webui
PKG_VERSION:=vendor_prefix_4.0
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause-Patent

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/api/v4/projects/40213611/packages/generic/$(PKG_NAME)/$(PKG_VERSION)
PKG_HASH:=071c2f093aef6a2e0514a93412949b3a49518d2f0f1faaf53e734c1184b9ad34

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
