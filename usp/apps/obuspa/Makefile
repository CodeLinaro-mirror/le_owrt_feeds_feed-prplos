include $(TOPDIR)/rules.mk

PKG_NAME:=obuspa
PKG_VERSION:=v10.0.0

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/BroadbandForum/obuspa.git
PKG_MIRROR_HASH:=d331452633ecb9d5c1f228d58dfdeb84f04d4a9055e7b17896af797fdd0cffea
PKG_SOURCE_VERSION:=8fb0942ea06d3cf3ac0f95dc69cc3596b6db62fc


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

CONFIGURE_ARGS += --disable-websockets --disable-bulkdata --disable-coap

define Package/$(PKG_NAME)/install
	$(RM) -r $(PKG_INSTALL_DIR)/var
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
	if [ -d ./files ]; then \
		$(CP)  ./files/* $(1)/; \
	fi
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

