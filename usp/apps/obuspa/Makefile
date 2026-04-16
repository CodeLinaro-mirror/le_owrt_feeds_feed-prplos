include $(TOPDIR)/rules.mk

PKG_NAME:=obuspa
PKG_VERSION:=v11.0.0

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/BroadbandForum/obuspa.git
PKG_MIRROR_HASH:=3d87b7f8fc14935d07c2d3ae3c4eba4ec08fc52c8a1a4d4ba0131e99ece76dd3
PKG_SOURCE_VERSION:=2d885f12d7fd345435b5db651b3111cb6d3a879e


PKG_MAINTAINER:=support.prpl@vantiva.com
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_FIXUP:=autoreconf
PKG_INSTALL=1

PKG_RELEASE:=4

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Utilities
  TITLE:=Provides User Services Platform (USP) Agent.
  DEPENDS +=+libsqlite3
  DEPENDS +=+libcurl
  DEPENDS +=+libmosquitto
  DEPENDS+=+OBUSPA_WEBSOCKET_MTP_SUPPORT:libwebsockets4-full
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	OB-USP-AGENT is a daemon providing a User Services Platform (USP) Agent.
endef

CONFIGURE_ARGS += --disable-bulkdata --disable-coap

ifneq ($(CONFIG_OBUSPA_WEBSOCKET_MTP_SUPPORT),y)
    CONFIGURE_ARGS += --disable-websockets
endif

define Package/$(PKG_NAME)/install
	$(RM) -r $(PKG_INSTALL_DIR)/var
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP)  ./files/* $(1)/; \
	fi
endef

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

