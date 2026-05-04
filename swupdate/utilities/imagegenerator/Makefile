include $(TOPDIR)/rules.mk

PKG_NAME:=imagegenerator
PKG_VERSION:=1.0
SHORT_DESCRIPTION:=Provide tools to build various format of images

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=FEAT-29
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/components/utilities/imagegenerator.git
PKG_MIRROR_HASH:=e175429c294e4381e63c356bd78d3bf15f898bdcddb0bcf4a9a36534105df308
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME)-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=BSD-2-Clause-Patent
PKG_LICENSE_FILES:=LICENSE

PKG_RELEASE:=1
PKG_BUILD_DEPENDS += imagegenerator/host
HOST_BUILD_DEPENDS += uboot-hosttools/host
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

define Build/Compile
	@echo "Nothing to build"
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/security
	$(CP) $(PKG_BUILD_DIR)/keys/public.pem $(1)/security/
	$(CP) $(PKG_BUILD_DIR)/keys/smd_pub.pem $(1)/security/
endef

define Host/Compile
	@echo "Selected board: $(CONFIG_IMAGEGENERATOR_BOARD)"
endef

define Host/Install
	$(MAKE) -C $(HOST_BUILD_DIR) BOARD=$(CONFIG_IMAGEGENERATOR_BOARD) \
	    install DESTDIR=$(HOST_BUILD_DIR)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call HostBuild))
