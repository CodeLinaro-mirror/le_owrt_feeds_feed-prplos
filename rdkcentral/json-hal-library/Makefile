include $(TOPDIR)/rules.mk

PKG_NAME:=json-hal-library
PKG_VERSION=test-json-hal-library
SHORT_DESCRIPTION:=JSON HAL Library

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/mirrors/json-hal-library-/archive/$(PKG_VERSION)
PKG_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=sercomm

PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Libraries
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/mirrors/json-hal-library
  DEPENDS += +libjson-c
endef

define Package/$(PKG_NAME)/description
	JSON HAL Library
endef

TARGET_CFLAGS += $(TARGET_CPPFLAGS)

ifeq ($(CONFIG_SAH_JSON_HAL_LIBRARY_DISABLE_SCHEMA_VALIDATION),y)
	CMAKE_OPTIONS += -DJSON_SCHEMA_VALIDATION_ENABLED=OFF
endif

ifeq ($(CONFIG_SAH_JSON_HAL_LIBRARY_DISABLE_BLOCKING_SUBSCRIBE_EVENT),y)
	CMAKE_OPTIONS += -DJSON_BLOCKING_SUBSCRIBE_EVENT=OFF
endif

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
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
$(eval $(call HostBuild))
