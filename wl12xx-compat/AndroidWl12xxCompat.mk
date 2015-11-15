# This makefile is included from vendor/intel/common/wifi/WifiRules.mk.
.PHONY: build_wl12xx-compat
TI_SRC_DIR := $(call my-dir)
TI_BUILD_DIR := $(PRODUCT_OUT)/wl12xx-compat
WIFI_MODULES_DIR = $(ANDROID_BUILD_TOP)/$(PRODUCT_OUT)/root/lib/modules/updates

build_wl12xx-compat: build_kernel
	@echo Building kernel module $@
	@rm -rf $(TI_BUILD_DIR)
	$(KERNEL_BLD_ENV) $(MAKE) -C $(TI_SRC_DIR) ARCH=$(KERNEL_ARCH) $(KERNEL_EXTRA_FLAGS) KLIB=$(ANDROID_BUILD_TOP)/$(TI_BUILD_DIR) KLIB_BUILD=$(KERNEL_OUT)
	$(KERNEL_BLD_ENV) $(MAKE) -C $(TI_SRC_DIR) ARCH=$(KERNEL_ARCH) $(KERNEL_EXTRA_FLAGS) KLIB=$(ANDROID_BUILD_TOP)/$(TI_BUILD_DIR) KLIB_BUILD=$(KERNEL_OUT) KERNEL_MODINSTALL=$(KERNEL_MODINSTALL) KMODDIR=kernel install-modules
	@mkdir -p $(WIFI_MODULES_DIR)
	@find $(KERNEL_OUT)/lib/modules/ -name "*.ko" -exec cp -v {} $(WIFI_MODULES_DIR)/ \;
