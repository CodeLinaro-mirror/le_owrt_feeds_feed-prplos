include $(TOPDIR)/rules.mk

PKG_NAME:=prpl-securestore
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause-Patent

PKG_CONFIG_DEPENDS:= \
	CONFIG_PRPL_SFL_SECURESTORE_LABEL

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=base
  CATEGORY:=prpl Foundation
  TITLE:=prpl securestore partition mount
  DEPENDS:=+blkid
endef

define Package/$(PKG_NAME)/description
  Mounts the securestore partition at /cfg during boot.
  Required for secure eMMC boot configurations.
endef

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/init.d $(1)/etc/rc.d
	$(INSTALL_BIN) ./files/etc/init.d/securestore $(1)/etc/init.d/securestore
	$(SED) "s#PRPL_SFL_SECURESTORE_LABEL=\"securestore\"#PRPL_SFL_SECURESTORE_LABEL=\"$(CONFIG_PRPL_SFL_SECURESTORE_LABEL)\"#g" \
		$(1)/etc/init.d/securestore
	$(LN) -sr $(1)/etc/init.d/securestore $(1)/etc/rc.d/S15securestore
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
