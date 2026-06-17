include $(TOPDIR)/rules.mk

PKG_NAME:=libcami
COMPONENT:=$(PKG_NAME)
SHORT_DESCRIPTION:=C Asterisk Manager Interface
PKG_VERSION:=v0.0.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/InterLinked1/cami.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=18941eca6c2a352e92e51f453c3760a056c2a71d
PKG_SOURCE_PROTO:=git

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=Libraries
  TITLE:=$(PKG_NAME)
endef

define Package/$(PKG_NAME)/description
	$(SHORT_DESCRIPTION)
endef

define Build/Compile
	CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS)" \
	$(MAKE) -C $(PKG_BUILD_DIR) \
	$(TARGET_CONFIGURE_OPTS) \
	STAGING_DIR=$(STAGING_DIR)
endef

define Build/Install
	$(call Build/Install/Default)
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(PKG_NAME).so $(1)/usr/lib/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
