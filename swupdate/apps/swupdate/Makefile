include $(TOPDIR)/rules.mk
-include $(STAGING_DIR)/components.config

PKG_NAME:=swupdate
SHORT_DESCRIPTION:=description

PKG_VERSION:=gen_2025.05_v1.0.0
PKG_SOURCE:=swupdate-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/prpl-foundation/mirrors/swupdate/-/archive/$(PKG_VERSION)
PKG_HASH:=8465033959cbdc37fc08e34689baf7e5403bdf439c69e98e4d80a5e15990554d
PKG_BUILD_DIR:=$(BUILD_DIR)/swupdate-$(PKG_VERSION)
PKG_MAINTAINER:=Soft At Home <support.opensource@softathome.com>
PKG_LICENSE:=GPL
PKG_LICENSE_FILES:=COPYING

PKG_RELEASE:=1
ifneq ($(CONFIG_SWUPDATE_MTD),)
PKG_BUILD_DEPENDS += fstools
PKG_BUILD_DEPENDS += mtd-utils
endif
PKG_BUILD_DEPENDS += libubootenv

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=amx
  SUBMENU:=Plugins
  TITLE:=$(SHORT_DESCRIPTION)
  URL:=git@gitlabinternal.softathome.com:bootloader/swupdate.git
  # Fix: Add missing runtime dependencies
  DEPENDS += +zlib
  DEPENDS += +libopenssl
  DEPENDS += +libconfig
  DEPENDS += +lua5.3
  DEPENDS += +libcurl
  DEPENDS += +libjson-c
ifneq ($(CONFIG_SWUPDATE_MTD),)
  DEPENDS += +fstools
  DEPENDS += +nand-utils
  DEPENDS += +mtd-utils
endif
  DEPENDS += +libubootenv
  DEPENDS += \
             +OPENSOURCE_SWUPDATE_EXT_FILESYSTEM:libblkid \
             +OPENSOURCE_SWUPDATE_EXT_FILESYSTEM:libext2fs \
             +OPENSOURCE_SWUPDATE_EXT_FILESYSTEM:libuuid \
             +OPENSOURCE_SWUPDATE_EXT_FILESYSTEM:libcomerr \
             +OPENSOURCE_SWUPDATE_DISKPART_HANDLER:libfdisk
  MENU:=1
endef

define Package/$(PKG_NAME)/description
	Implementation of Device.Hosts of the TR-181 datamodel
endef

define KCONFIG_SET_OPT # (option, value, file)
	sed -i "/$(1)/d" $(3)
	echo '$(1)=$(2)' >> $(3)
endef

define KCONFIG_ENABLE_OPT # (option, file)
	sed "/$(1)/d" $(2)
	echo "$(1)=y" >> $(2)
endef

define KCONFIG_DISABLE_OPT # (option, file)
	sed "/$(1)/d" $(2)
	echo "# $(1) is not set" >> $(2)
endef

# Fix: Update libraries list to include proper library names
LIBRARIES:=zlib openssl libconfig libubootenv
TARGET_CFLAGS += -I$(STAGING_DIR)/usr/include/lua5.3
TARGET_LDFLAGS += -L$(STAGING_DIR)/usr/lib -llua5.3
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_EXT_FILESYSTEM),)
TARGET_LDFLAGS += -lcom_err
endif

# filter out ssp config to enforce strack-protector-all
EXTRA_CFLAGS:=$(EXTRA_CFLAGS) $(filter-out -fstack-protector -fstack-protector-strong -fstack-protector-all, $(TARGET_CFLAGS)) $(shell pkg-config --cflags $(LIBRARIES)) -Wall -W

# enfoce stack-protector-all if SSP not disabled in the build
ifndef CONFIG_PKG_CC_STACKPROTECTOR_NONE
EXTRA_CFLAGS+=-fstack-protector-all
endif

# add PIE if ASLR not disable in the configuration
ifdef CONFIG_PKG_ASLR_PIE_ALL
  ifeq ($(strip $(PKG_ASLR_PIE)),1)
    EXTRA_CFLAGS+=-specs=$(INCLUDE_DIR)/hardened-ld-pie.specs
  endif
endif
ifdef CONFIG_PKG_ASLR_PIE_REGULAR
  ifeq ($(strip $(PKG_ASLR_PIE_REGULAR)),1)
    EXTRA_CFLAGS+=-specs=$(INCLUDE_DIR)/hardened-ld-pie.specs
  endif
endif
ifneq ($(CONFIG_SWUPDATE_MTD),)
# Fix: Add proper library paths and libraries for MTD and U-Boot
MTD_BUILD_DIR:=$(shell find $(BUILD_DIR) -maxdepth 1 -name "mtd-utils-*" -type d | head -1)
endif

# filter out fpic and pie optoin from LDFLAGS to be compatible with wayy of work of swupdate
EXTRA_LDFLAGS:=$(EXTRA_LDFLAGS) $(filter-out $(FPIC) -specs=$(INCLUDE_DIR)/hardened-ld-pie.specs ,$(TARGET_LDFLAGS)) $(shell pkg-config --libs $(LIBRARIES))

# Fix: Add MTD paths and libraries
ifneq ($(CONFIG_SWUPDATE_MTD),)
EXTRA_LDFLAGS += -L$(MTD_BUILD_DIR) -lmtd -lubi
EXTRA_LDFLAGS += -L$(STAGING_DIR)/usr/lib
endif

ifneq ($(MTD_BUILD_DIR),)
EXTRA_CFLAGS += -I$(MTD_BUILD_DIR)/include
endif
EXTRA_CFLAGS += -I$(STAGING_DIR)/usr/include

CFLAGS:=
LDFLAGS:=

OUTPUT_FILES_LIST:=$(STAGINGDIR)/sbl/swupdate-installed.txt
define install_output_files
for file in `cat $(OUTPUT_FILES_LIST)` ; do \
	mkdir -p `dirname $2/$$file`; cp --no-dereference $1/$$file $2/$$file;\
done
endef

define Build/Prepare
	$(call Build/Prepare/Default)
ifneq ($(CONFIG_SWUPDATE_MTD),)
	# Version-independent MTD library discovery
	mkdir -p $(PKG_BUILD_DIR)/lib
	MTD_DIR=$$(find $(BUILD_DIR) -maxdepth 1 -name "mtd-utils-*" -type d | head -1); \
	if [ -n "$$MTD_DIR" ] && [ -f "$$MTD_DIR/libmtd.a" ]; then \
		cp "$$MTD_DIR/libmtd.a" $(PKG_BUILD_DIR)/lib/; \
	fi; \
	if [ -n "$$MTD_DIR" ] && [ -f "$$MTD_DIR/libubi.a" ]; then \
		cp "$$MTD_DIR/libubi.a" $(PKG_BUILD_DIR)/lib/; \
	fi
endif
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) softathome_defconfig
	$(call KCONFIG_SET_OPT,CONFIG_LUAPKG,"lua5.3",$(PKG_BUILD_DIR)/.config)
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_DISKPART_HANDLER),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_DISKPART,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_ENABLE_OPT,CONFIG_DISKPART_FORMAT,$(PKG_BUILD_DIR)/.config)
endif
ifeq ($(CONFIG_SWUPDATE_MTD),)
	# Disable UBI
	$(call KCONFIG_DISABLE_OPT,CONFIG_UBIVOL,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_DISABLE_OPT,CONFIG_UBIATTACH,$(PKG_BUILD_DIR)/.config)

	# Disable MTD/NAND
	$(call KCONFIG_DISABLE_OPT,CONFIG_MTD,$(PKG_BUILD_DIR)/.config)
endif	
	$(call KCONFIG_SET_OPT,CONFIG_EXTRA_CFLAGS,"$(EXTRA_CFLAGS)",$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_SET_OPT,CONFIG_EXTRA_LDFLAGS,"$(EXTRA_LDFLAGS) -L$(PKG_BUILD_DIR)/lib",$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_SET_OPT,CONFIG_HW_COMPATIBILITY_FILE,$(CONFIG_OPENSOURCE_SWUPDATE_HWREVISION),$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_SET_OPT,CONFIG_SW_VERSIONS_FILE,$(CONFIG_OPENSOURCE_SWUPDATE_SWVERSIONS),$(PKG_BUILD_DIR)/.config)
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_UBOOT),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_UBOOT,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_SET_OPT,CONFIG_UBOOT_FWENV,$(CONFIG_OPENSOURCE_SWUPDATE_UBOOT_FWENV),$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_SET_OPT,CONFIG_UBOOT_DEFAULTENV,$(CONFIG_OPENSOURCE_SWUPDATE_UBOOT_DEFAULTENV),$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_ENABLE_OPT,CONFIG_BOOTLOADER_UBOOT,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_DISABLE_OPT,CONFIG_BOOTLOADER_NONE,$(PKG_BUILD_DIR)/.config)
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_UBOOT,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_ENABLE_OPT,CONFIG_BOOTLOADER_NONE,$(PKG_BUILD_DIR)/.config)
endif
	$(call KCONFIG_ENABLE_OPT,CONFIG_UBIVOL,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_DISABLE_OPT,CONFIG_UBIATTACH,$(PKG_BUILD_DIR)/.config)
ifneq ($(CONFIG_OPENSOURCE_SURICATTA),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_SURICATTA,$(PKG_BUILD_DIR)/.config)
ifneq ($(CONFIG_OPENSOURCE_SURICATTA_SSL),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_SURICATTA_SSL,$(PKG_BUILD_DIR)/.config)
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_SURICATTA_SSL,$(PKG_BUILD_DIR)/.config)
endif
ifneq ($(CONFIG_OPENSOURCE_SURICATTA_HAWKBIT),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_SURICATTA_HAWKBIT,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_DISABLE_OPT,CONFIG_SURICATTA_GENERAL,$(PKG_BUILD_DIR)/.config)
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_SURICATTA_HAWKBIT,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_ENABLE_OPT,CONFIG_SURICATTA_GENERAL,$(PKG_BUILD_DIR)/.config)
endif
ifneq ($(CONFIG_OPENSOURCE_SURICATTA_LUA),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_SURICATTA_LUA,$(PKG_BUILD_DIR)/.config)
ifneq ($(CONFIG_OPENSOURCE_EMBEDDED_SURICATTA_LUA),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_EMBEDDED_SURICATTA_LUA,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_SET_OPT,CONFIG_EMBEDDED_SURICATTA_LUA_SOURCE,$(CONFIG_OPENSOURCE_EMBEDDED_SURICATTA_LUA_SOURCE),$(PKG_BUILD_DIR)/.config)
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_EMBEDDED_SURICATTA_LUA,$(PKG_BUILD_DIR)/.config)
endif
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_SURICATTA_LUA,$(PKG_BUILD_DIR)/.config)
endif
endif
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_DISKFORMAT_HANDLER),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_DISKFORMAT_HANDLER,$(PKG_BUILD_DIR)/.config)
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_EXT_FILESYSTEM),)
	$(call KCONFIG_SET_OPT,CONFIG_EXT_FILESYSTEM,$(CONFIG_OPENSOURCE_SWUPDATE_EXT_FILESYSTEM),$(PKG_BUILD_DIR)/.config)
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_EXT_FILESYSTEM,$(PKG_BUILD_DIR)/.config)
endif
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_FAT_FILESYSTEM),)
	$(call KCONFIG_SET_OPT,CONFIG_FAT_FILESYSTEM,$(CONFIG_OPENSOURCE_SWUPDATE_FAT_FILESYSTEM),$(PKG_BUILD_DIR)/.config)
else
	$(call KCONFIG_DISABLE_OPT,CONFIG_FAT_FILESYSTEM,$(PKG_BUILD_DIR)/.config)
endif
	$(call KCONFIG_DISABLE_OPT,CONFIG_BTRFS_FILESYSTEM,$(PKG_BUILD_DIR)/.config)
	$(call KCONFIG_DISABLE_OPT,CONFIG_BTRFS_FILESYSTEM_USELIBMKFS,$(PKG_BUILD_DIR)/.config)
endif
ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_WEBSERVER),)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WEBSERVER,$(PKG_BUILD_DIR)/.config)
	ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_MONGOOSE),)
		$(call KCONFIG_ENABLE_OPT,CONFIG_MONGOOSE,$(PKG_BUILD_DIR)/.config)
	else
		$(call KCONFIG_DISABLE_OPT,CONFIG_MONGOOSE,$(PKG_BUILD_DIR)/.config)
	endif
	ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_MONGOOSEIPV6),)
		$(call KCONFIG_ENABLE_OPT,CONFIG_MONGOOSEIPV6,$(PKG_BUILD_DIR)/.config)
	else
		$(call KCONFIG_DISABLE_OPT,CONFIG_MONGOOSEIPV6,$(PKG_BUILD_DIR)/.config)
	endif
	ifneq ($(CONFIG_OPENSOURCE_SWUPDATE_MONGOOSESSL),)
		$(call KCONFIG_ENABLE_OPT,CONFIG_MONGOOSESSL,$(PKG_BUILD_DIR)/.config)
	else
		$(call KCONFIG_DISABLE_OPT,CONFIG_MONGOOSESSL,$(PKG_BUILD_DIR)/.config)
	endif
	else
		$(call KCONFIG_DISABLE_OPT,CONFIG_WEBSERVER,$(PKG_BUILD_DIR)/.config)
endif
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_FLAGS) CFLAGS="$(EXTRA_CFLAGS)" LDFLAGS="$(EXTRA_LDFLAGS) -L$(PKG_BUILD_DIR)/lib" LUABUILD_VERSION=5.3 SKIP_STRIP=y  V=1
endef

define Build/Install
	$(MAKE) -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_INSTALL_FLAGS) install DESTDIR=$(PKG_INSTALL_DIR) CFLAGS="$(EXTRA_CFLAGS)" LDFLAGS="$(EXTRA_LDFLAGS)" LUABUILD_VERSION=5.3 SKIP_STRIP=y V=1
endef

define Build/InstallDev
	echo ""
endef

define Package/$(PKG_NAME)/install
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

define Package/$(PKG_NAME)/config
	source "$(SOURCE)/Config.in"
endef


$(eval $(call BuildPackage,$(PKG_NAME)))
