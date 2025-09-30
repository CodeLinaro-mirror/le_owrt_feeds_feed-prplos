include $(TOPDIR)/rules.mk

PKG_NAME:=pkcs11-provider
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/latchset/pkcs11-provider.git
PKG_SOURCE_VERSION:=7d15cdf4a07a3dc56c855d399e716f55c085ed05
PKG_MIRROR_HASH:=d70adac14ac155e20383273b95e77788a3bb394847624b75bc5026134f0007a5

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=openssl

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/$(PKG_NAME)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=OpenSSL PKCS#11 Provider
  DEPENDS+=libopenssl
endef

define Package/$(PKG_NAME)/description
  An OpenSSL 3 provider exposing PKCS#11 keys.
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/ossl-modules
	$(CP) $(PKG_BUILD_DIR)/openwrt-build/src/pkcs11.so $(1)/usr/lib/ossl-modules/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
