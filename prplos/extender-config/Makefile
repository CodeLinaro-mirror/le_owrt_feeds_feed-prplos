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
	$(INSTALL_DIR) $(1)/etc/

	$(CP) ./files/prplconfig $(1)/etc/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
