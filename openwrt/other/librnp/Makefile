include $(TOPDIR)/rules.mk

PKG_NAME:=librnp
PKG_VERSION:=0.17.1
PKG_RELEASE:=1
PKG_CPE_ID:=cpe:/a:ribose:rnp

PKG_SOURCE_URL:=https://github.com/rnpgp/rnp.git
PKG_SOURCE_VERSION:=v$(PKG_VERSION)
PKG_SOURCE_PROTO:=git
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>

PKG_LICENSE:=BSD-2-Clause-NetBSD Apache-2.0 BSD-3-Clause MIT Custom
PKG_LICENSE_FILES:=LICENSE.md

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/librnp
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=library implementing OpenPGP functions
  URL:=https://github.com/rnpgp/rnp
  DEPENDS:=+libbotan +libbz2 +libjson-c +libsexpp +zlib
endef

define Package/librnp/description
 Library implementing OpenPGP functions.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_TESTING=OFF \
	-DSYSTEM_LIBSEXPP=ON


define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include
endef

define Package/librnp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/librnp.so* $(1)/usr/lib
endef


$(eval $(call BuildPackage,librnp))
