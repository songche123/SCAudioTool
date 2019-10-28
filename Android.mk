LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_CFLAGS += -DAML_CONFIG_SUPPORT_READ_ONLY

LOCAL_C_INCLUDES +=                      \
    $(LOCAL_PATH)/include       


LOCAL_SRC_FILES  +=               \
    volume.c

LOCAL_MODULE := libscaudiotool

ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 26 && echo OK),OK)
    LOCAL_PROPRIETARY_MODULE := true
endif

LOCAL_SHARED_LIBRARIES += \
    libc                  \
    libcutils             \
    libutils              \
    liblog                

LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS += -DBUILD_IN_ANDROID

include $(BUILD_SHARED_LIBRARY)
