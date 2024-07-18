include $(TOPDIR)/rules.mk

PKG_NAME:=obuspa
PKG_VERSION:=v8.0.4-prpl-integration3

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/BroadbandForum/obuspa.git
PKG_MIRROR_HASH:=889775a4120c20e7e312ea167ceb1f50cedff83b7dd63715fa57774f99c39aaa
PKG_SOURCE_VERSION:=7c4158239865b8b440470cda8bd0521ffbb07597

PKG_MAINTAINER:=support.prpl@vantiva.com
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_FIXUP:=autoreconf
PKG_INSTALL=1

PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Utilities
  TITLE:=Provides User Services Platform (USP) Agent.
  DEPENDS +=+libsqlite3
  DEPENDS +=+libcurl
  DEPENDS +=+libmosquitto
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	OB-USP-AGENT is a daemon providing a User Services Platform (USP) Agent.
endef

CONFIGURE_ARGS += --disable-websockets

define Package/$(PKG_NAME)/install
	$(RM) -r $(PKG_INSTALL_DIR)/var
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP)  ./files/* $(1)/; \
	fi
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

