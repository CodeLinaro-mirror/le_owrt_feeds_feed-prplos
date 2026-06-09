include $(TOPDIR)/rules.mk

PKG_NAME:=imagegenerator
PKG_VERSION:=v0.2.0
SHORT_DESCRIPTION:=Provide tools to build various format of images

PKG_SOURCE:=imagegenerator-v0.2.0.tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/utilities/imagegenerator/-/archive/v0.2.0
PKG_HASH:=fde37b29a4ac5ee9b503c519ffa29b6b21f07c163c8c7fe24ef960e32c4f5e31
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

PKG_RELEASE:=1
PKG_BUILD_DEPENDS += imagegenerator/host
HOST_BUILD_DEPENDS += uboot-tools/host
HOST_BUILD_DEPENDS += swugenerator/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/$(PKG_NAME)
  CATEGORY:=prpl Foundation
  SUBMENU:=Image Generation
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=https://gitlab.com/prpl-foundation/components/utilities/imagegenerator.git
endef

define Package/$(PKG_NAME)/description
	Provide tools to build various formats of images
endef

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

PRPLOS_VERSION := $(strip $(shell $(SCRIPT_DIR)/prplos_version.sh))
EXTRA_CFLAGS += -DPRPLOS_VERSION='\"$(PRPLOS_VERSION)\"'

define Build/Compile
	@echo "Selected board: $(CONFIG_IMAGEGENERATOR_BOARD)"
	$(call Build/Compile/Default, \
	    BOARD=$(CONFIG_IMAGEGENERATOR_BOARD) \
	    CFLAGS=$(EXTRA_CFLAGS))
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/security
	$(CP) $(PKG_BUILD_DIR)/keys/public.pem $(1)/security/
	$(CP) $(PKG_BUILD_DIR)/keys/smd_pub.pem $(1)/security/
endef

define Host/Compile
	@echo "Nothing to build for the host"
endef

define Host/Install
	@echo "Nothing to install for the host"
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call HostBuild))
