include $(TOPDIR)/rules.mk

PKG_NAME:=extender-config
PKG_RELEASE:=1


include $(INCLUDE_DIR)/package.mk


define Package/extender-config
	SECTION=:net
	CATEGORY:=Network
	TITLE:=Extender specific config files
	MAINTAINER:=Inango <mail@inango.com>
endef

define Package/extender-config/description
Extender specific config files
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef


define Package/extender-config/install
	$(INSTALL_DIR) $(1)/etc/amx/wld/wld_defaults/
	$(CP) ./files/45-extender-ep-defaults.odl.uc $(1)/etc/amx/wld/wld_defaults/

	$(INSTALL_DIR) $(1)/etc/amx/tr181-bridging/tr181-bridging_defaults/
	$(CP) ./files/99_bridging_enable_lan_stp.odl $(1)/etc/amx/tr181-bridging/tr181-bridging_defaults/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
