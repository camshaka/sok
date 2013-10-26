###############################################################################
# Simple Object Kernel project Makefile                                       #
# Copyright 2013 - Damien Dejean <dam.dejean@gmail.com>                       #
#                                                                             #
# Basic standard library build configuration.                                 #
###############################################################################

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Boot
LOCAL_MODULE_CLASS := KERNEL
LOCAL_SRC_FILES := $(call all-c-files-under,.) \
    $(call all-asm-files-under,.)
LOCAL_CFLAGS := -DVGA_DEBUG

include $(BUILD_STATIC_LIBRARY)

