include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/version.mk

PKG_NAME:=gnss-boot-config
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
endef

define Package/gnss-boot-config
  TITLE:=Bootmode configuration for gnss
  CATEGORY:=prpl Foundation
  SUBMENU:=Utilities
endef

define Package/gnss-boot-config/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/gnss-boot-config.init $(1)/etc/init.d/gnss-boot-config
endef

$(eval $(call BuildPackage,gnss-boot-config))
