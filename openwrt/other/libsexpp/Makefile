include $(TOPDIR)/rules.mk

PKG_NAME:=libsexpp
PKG_VERSION:=0.8.8
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/rnpgp/sexpp.git
PKG_SOURCE_VERSION:=v$(PKG_VERSION)
PKG_SOURCE_PROTO:=git
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>

PKG_LICENSE:=MIT Custom
PKG_LICENSE_FILES:=LICENSE.md

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libsexpp
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=S-Expressions parser and generator library
  URL:=https://github.com/rnpgp/sexpp
  DEPENDS:=+libstdcpp
endef

define Package/libsexpp/description
 Library for working with S-Expressions.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DWITH_SEXP_TESTS=OFF \
	-DWITH_SEXP_CLI=OFF

define Build/InstallDev
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

define Package/libsexpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsexpp.so* $(1)/usr/lib
endef


$(eval $(call BuildPackage,libsexpp))
