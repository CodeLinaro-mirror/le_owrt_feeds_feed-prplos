include $(TOPDIR)/rules.mk

PKG_NAME:=imagegenerator
PKG_VERSION:=1.0
SHORT_DESCRIPTION:=Provide tools to build various format of images

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=dev_FEAT_29
PKG_SOURCE_URL:=git@gitlab.com:prpl-foundation/components/utilities/imagegenerator.git
PKG_MIRROR_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=SAH BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE.SAH LICENSE.BSD

PKG_RELEASE:=1
PKG_BUILD_DEPENDS += uboot-hosttools/host
PKG_BUILD_DEPENDS += swugenerator/host

include $(INCLUDE_DIR)/package.mk

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

define Build/Compile
	@echo "Selected board: $(CONFIG_IMAGEGENERATOR_BOARD)"
endef

define Build/Install
	$(MAKE) -C $(PKG_BUILD_DIR) BOARD=$(CONFIG_IMAGEGENERATOR_BOARD) \
	    STAGINGDIR=$(STAGING_DIR) install DESTDIR=$(1)
endef

define Build/InstallDev
	mkdir -p $(BIN_DIR)/tmp
	cp -r $(STAGING_DIR)/imagegenerator $(BIN_DIR)/tmp/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
