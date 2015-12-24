local_target_dir_fw := $(TARGET_OUT)/etc/firmware/ti-connectivity
local_target_dir_tq := $(TARGET_OUT)/etc/wifi
LOCAL_PATH          := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := wl128x-fw-4-sr.bin
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_PATH   := $(local_target_dir_fw)
LOCAL_SRC_FILES     := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS  := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := wl128x-fw-4-mr.bin
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_PATH   := $(local_target_dir_fw)
LOCAL_SRC_FILES     := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS  := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := wl128x-fw-4-plt.bin
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_PATH   := $(local_target_dir_fw)
LOCAL_SRC_FILES     := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS  := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := wl1271-nvs_128x.bin
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_PATH   := $(local_target_dir_fw)
LOCAL_SRC_FILES     := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS  := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES     := TQS.ini
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := ETC
LOCAL_MODULE_PATH   := $(local_target_dir_tq)
LOCAL_MODULE        := $(LOCAL_SRC_FILES)
include $(BUILD_PREBUILT)
