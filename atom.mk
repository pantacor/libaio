
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libaio
LOCAL_DESCRIPTION := libaio module

LOCAL_EXPORT_LDLIBS = -laio

LOCAL_AUTOTOOLS_MAKE_BUILD_ARGS := CROSS_COMPILE=$(TARGET_CROSS) CC=$(TARGET_CROSS)gcc BUILD_CC=gcc
LOCAL_AUTOTOOLS_MAKE_INSTALL_ARGS := lib=lib

define LOCAL_AUTOTOOLS_CMD_CONFIGURE
	cp -r $(PRIVATE_PATH)/*  $(call module-get-build-dir,libaio)/obj
endef

include $(BUILD_AUTOTOOLS)

