#
# Copyright (C) 2014-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libwebsockets4
PKG_VERSION:=4.3.3
PKG_RELEASE:=1

PKG_SOURCE:=libwebsockets-$(PKG_VERSION).tar.gz
PKG_SOURCE_SUBDIR:=libwebsockets-$(PKG_VERSION)
PKG_SOURCE_URL:=https://codeload.github.com/warmcat/libwebsockets/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=6fd33527b410a37ebc91bb64ca51bdabab12b076bc99d153d7c5dd405e4bdf90

PKG_SOURCE_VERSION:=v$(PKG_VERSION)

UNPACK_CMD=tar -xf "$(DL_DIR)/$(PKG_SOURCE)" -C $(PKG_BUILD_DIR) --strip-components=1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=libubox

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_OPTIONS += -DLWS_IPV6=$(if $(CONFIG_IPV6),ON,OFF)
CMAKE_OPTIONS += -DISABLE_WERROR=ON
CMAKE_OPTIONS += -DCMAKE_BUILD_TYPE=Release
CMAKE_OPTIONS += -DLWS_WITH_EXTERNAL_POLL=ON
CMAKE_OPTIONS += -DLWS_WITH_ULOOP=ON

# turn off all test apps
CMAKE_OPTIONS += -DLWS_WITHOUT_TESTAPPS=ON
CMAKE_OPTIONS += -DLWS_WITHOUT_TEST_SERVER=ON
CMAKE_OPTIONS += -DLWS_WITHOUT_TEST_SERVER_EXTPOLL=ON
CMAKE_OPTIONS += -DLWS_WITHOUT_TEST_PING=ON
CMAKE_OPTIONS += -DLWS_WITHOUT_TEST_CLIENT=ON

define Package/libwebsockets4/Default
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=libwebsockets4
	DEPENDS:=+zlib +libcap +libubox
	URL:=https://libwebsockets.org
	MAINTAINER:=Karl Palsson <karlp@etactica.com>
endef

define Package/libwebsockets4-openssl
	$(call Package/libwebsockets4/Default)
	TITLE += (OpenSSL)
	DEPENDS += +libopenssl
	VARIANT:=openssl
	CONFLICTS:=libwebsockets4-full
endef

define Package/libwebsockets4-mbedtls
	$(call Package/$(PKG_NAME)/Default)
	TITLE += (mbedTLS)
	DEPENDS += +libmbedtls
	VARIANT:=mbedtls
	PROVIDES:=libwebsockets4
	CONFLICTS:=libwebsockets4-openssl
endef

define Package/libwebsockets4-full
	$(call Package/libwebsockets4/Default)
	TITLE += (Full - OpenSSL, libuv, plugins, CGI)
	DEPENDS += +libopenssl +libuv +libevent2
	VARIANT:=full
	PROVIDES:=libwebsockets4 libwebsockets4-openssl
endef

ifeq ($(BUILD_VARIANT),openssl)
    CMAKE_OPTIONS += -DLWS_OPENSSL_CLIENT_CERTS=/etc/ssl/certs
    CMAKE_OPTIONS += -DLWS_WITH_SSL=ON
endif

ifeq ($(BUILD_VARIANT),mbedtls)
    CMAKE_OPTIONS += -DLWS_WITH_MBEDTLS=1
endif

ifeq ($(BUILD_VARIANT),full)
    CMAKE_OPTIONS += -DLWS_OPENSSL_CLIENT_CERTS=/etc/ssl/certs
    CMAKE_OPTIONS += -DLWS_WITH_SSL=ON
    CMAKE_OPTIONS += -DLWS_WITH_LIBUV=ON
    CMAKE_OPTIONS += -DLWS_WITH_PLUGINS=ON
    CMAKE_OPTIONS += -DLWS_WITH_SERVER_STATUS=ON
    CMAKE_OPTIONS += -DLWS_WITH_ACCESS_LOG=ON
    CMAKE_OPTIONS += -DLWS_WITH_CGI=ON
    CMAKE_OPTIONS += -DLWS_UNIX_SOCK=ON
    CMAKE_OPTIONS += -DCMAKE_POSITION_INDEPENDENT_CODE=ON
    CMAKE_OPTIONS += -DLWS_WITH_LIBEVENT=ON
    CMAKE_OPTIONS += -DLWS_MAX_SMP=10
endif

define Package/libwebsockets4/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libwebsockets*.so* $(1)/usr/lib/
endef

Package/libwebsockets4-mbedtls/install = $(Package/libwebsockets4/install)
Package/libwebsockets4-openssl/install = $(Package/libwebsockets4/install)

define Package/libwebsockets4-full/install
	$(call Package/libwebsockets4/install,$(1))
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libwebsockets-evlib_uv.so* $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libwebsockets-evlib_event.so* $(1)/usr/lib
endef

$(eval $(call BuildPackage,libwebsockets4-openssl))
$(eval $(call BuildPackage,libwebsockets4-mbedtls))
$(eval $(call BuildPackage,libwebsockets4-full))
