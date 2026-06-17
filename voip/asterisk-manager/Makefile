include $(TOPDIR)/rules.mk

PKG_NAME:=asterisk-manager
COMPONENT:=$(PKG_NAME)
SHORT_DESCRIPTION:=Asterisk Manager
PKG_VERSION:=v0.0.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/voip/asterisk-manager.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=0d0e32b7a781e99f28290acedda58747d119c926
PKG_SOURCE_PROTO:=git

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=Utilities
  TITLE:=$(PKG_NAME)
  DEPENDS += +libamxc
  DEPENDS += +libjson-c
  DEPENDS += +libcami
  DEPENDS += +json-hal-library
endef

define Package/$(PKG_NAME)/description
	$(SHORT_DESCRIPTION)
endef

define Build/Compile
	$(call Build/Compile/Default)
endef

define Build/Install
	$(call Build/Install/Default, install INSTALL=install DEST=$(PKG_INSTALL_DIR))
endef

define Build/InstallDev
	$(call Build/Install/Default, install INSTALL=install DEST=$(STAGING_DIR))
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP) ./files/* $(1)/; \
	fi
	find $(1) -name *.a -exec rm {} +;
	find $(1) -name *.h -exec rm {} +;
	find $(1) -name *.pc -exec rm {} +;
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
