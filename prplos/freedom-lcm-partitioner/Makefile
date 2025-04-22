include $(TOPDIR)/rules.mk

PKG_NAME:=freedom-lcm-partitioner
PKG_VERSION:=v0.1.0
PKG_RELEASE:=1
PKG_LICENSE:=BSD-2-Clause-Patent

include $(INCLUDE_DIR)/package.mk

define Package/freedom-lcm-partitioner
  TITLE:=freedom-lcm-partitioner
  CATEGORY:=prpl Foundation
  DEPENDS:=+sgdisk
endef

define Build/Compile
endef

define Package/freedom-lcm-partitioner/install
	mkdir -p $(1)/usr/bin $(1)/etc/init.d $(1)/etc/rc.d
	$(CP) ./files/freedom-create-lcm-partition $(1)/usr/bin
	$(CP) ./files/mount_lcm $(1)/etc/init.d
	$(LN) -r $(1)/etc/init.d/mount_lcm $(1)/etc/rc.d/S11mount_lcm
endef

$(eval $(call BuildPackage,freedom-lcm-partitioner))
