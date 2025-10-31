include $(TOPDIR)/rules.mk

PKG_NAME:=imagegenerator
PKG_VERSION:=1.0
SHORT_DESCRIPTION:=Provide tools to build various format of images

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=dev_FEAT-29/PCF-1893
PKG_SOURCE_URL:=git@gitlab.com:prpl-foundation/components/utilities/imagegenerator.git
PKG_MIRROR_HASH:=skip
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=SAH BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE.SAH LICENSE.BSD

PKG_RELEASE:=1
HOST_BUILD_DEPENDS += uboot-hosttools/host
HOST_BUILD_DEPENDS += swugenerator/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/$(PKG_NAME)
  CATEGORY:=SoftAtHome
  SUBMENU:=Applications
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=git@gitlabinternal.softathome.com:bootloader/imagegenerator
endef

define Package/$(PKG_NAME)/description
	Provide tools to build various formats of images
endef

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef

define Host/Compile
	@echo "Selected board: $(CONFIG_IMAGEGENERATOR_BOARD)"
endef

define Host/Install
	$(MAKE) -C $(HOST_BUILD_DIR) BOARD=$(CONFIG_IMAGEGENERATOR_BOARD) \
	    STAGINGDIR=$(STAGING_DIR_HOST) install DESTDIR=$(1)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call HostBuild))
