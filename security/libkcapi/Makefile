include $(TOPDIR)/rules.mk

PKG_NAME:=libkcapi
PKG_VERSION:=1.5.0
PKG_RELEASE:=$(AUTORELEASE)

PKG_SOURCE:=v$(PKG_VERSION).tar.gz
PKG_HASH:=f1d827738bda03065afd03315479b058f43493ab6e896821b947f391aa566ba0
PKG_SOURCE_URL:=https://github.com/smuellerDD/libkcapi/archive/refs/tags/

PKG_LICENSE:=BSD-2-Clause GPL-2.0-only
PKG_LICENSE_FILES:=COPYING COPYING.bsd COPYING.gplv2

PKG_INSTALL:=1

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/autotools.mk

EXTRA_CFLAGS:=-Wno-error=sign-conversion

CONFIGURE_ARGS+=--enable-kcapi-encapp --disable-doc

define Package/$(PKG_NAME)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=libkcapi
  URL:=https://github.com/smuellerDD/libkcapi
endef

define Package/kcapi-enc
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=kcapi-enc
  URL:=https://github.com/smuellerDD/libkcapi
  DEPENDS:=+libkcapi +kmod-crypto-user +kmod-cryptodev +kmod-crypto-cbc +kmod-crypto-hmac +kmod-crypto-gcm
endef

define Package/$(PKG_NAME)/description
  libkcapi allows user-space to access the Linux kernel crypto API.
  libkcapi uses this Netlink interface and exports easy to use APIs so that a developer 
  does not need to consider the low-level Netlink interface handling.
  The library does not implement any cipher algorithms. All consumer requests are sent to the kernel for processing.
  Results from the kernel crypto API are returned to the consumer via the library API.
  The kernel interface and therefore this library can be used by unprivileged processes.
endef

define Package/kcapi-enc/description
  The kcapi-enc application provides tool to use the symmetric ciphers of the Linux kernel crypto API from the command line.
endef

define Build/Compile
	$(call Build/compile/default, -Wno-error=sign-conversion)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/kcapi.h $(1)/usr/include
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libkcapi.so* $(1)/usr/lib/
endef

define Package/kcapi-enc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/kcapi-enc $(1)/usr/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call BuildPackage,kcapi-enc))
