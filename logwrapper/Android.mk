LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= logwrapper.c

ifneq ($(BOARD_HIJACK_ENABLE),true)
LOCAL_MODULE := logwrapper
else
LOCAL_MODULE := logwrapper.bin
LOCAL_MODULE_TAGS := eng
endif

LOCAL_STATIC_LIBRARIES := liblog
include $(BUILD_EXECUTABLE)
