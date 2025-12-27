# Android.mk for libcpp_compat stub library
# Alternative build method using make

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcpp_compat
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so

LOCAL_SRC_FILES := libcpp_compat_stub.cpp

LOCAL_CFLAGS := -Wall -Werror -fvisibility=default
LOCAL_CPPFLAGS := -std=c++17

LOCAL_SHARED_LIBRARIES := libc liblog

LOCAL_MULTILIB := 64
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/lib64

LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
