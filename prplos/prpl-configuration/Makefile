include $(TOPDIR)/rules.mk

PKG_NAME:=prpl-configuration
PKG_VERSION:=v0.2.0
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause-Patent

include $(INCLUDE_DIR)/package.mk

define Package/prpl-configuration
  TITLE:=prpl-configuration
  CATEGORY:=prpl Foundation
endef

define Build/Compile
endef

define Package/prpl-configuration/install
	$(CP) ./files/common/* $(1)/

	$(INSTALL_DIR) $(1)/etc/ucode-conf.d/
	echo "export PRPL_CPE_OPMODE=\"${CONFIG_PRPL_CPE_OPMODE}\"" > $(1)/etc/ucode-conf.d/10_cpe_opmode.sh
	chmod +x $(1)/etc/ucode-conf.d/10_cpe_opmode.sh
endef

define Package/prpl-configuration/config
	source "$(SOURCE)/Config.in"
endef

$(eval $(call BuildPackage,prpl-configuration))
