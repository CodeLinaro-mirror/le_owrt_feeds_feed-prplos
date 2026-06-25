include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/version.mk

PKG_NAME:=sysupgrade-prpl
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)
  TITLE:=Wrapper script for firmware upgrade via DeviceInfo DM
  CATEGORY:=prpl Foundation
  SUBMENU:=Utilities
  DEPENDS += +deviceinfo-manager
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/sbin
	$(INSTALL_BIN) ./files/sysupgrade-prpl $(1)/sbin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))