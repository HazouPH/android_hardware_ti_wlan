LOCAL_PATH:= $(call my-dir)

#
# Calibrator
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
		nvs.c \
		misc_cmds.c \
		calibrator.c \
		plt.c \
		ini.c

LOCAL_CFLAGS := -DCONFIG_LIBNL20
LOCAL_LDFLAGS := -Wl,--no-gc-sections

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)

ifneq ($(wildcard external/libnl),)
LOCAL_C_INCLUDES += external/libnl/include
LOCAL_SHARED_LIBRARIES := libnl
else
LOCAL_C_INCLUDES += external/libnl-headers
LOCAL_STATIC_LIBRARIES := libnl_2
endif

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := calibrator

LOCAL_SHARED_LIBRARIES:= libcutils

include $(BUILD_EXECUTABLE)
