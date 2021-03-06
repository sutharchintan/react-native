# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Header search path for all source files in this module.
LOCAL_C_INCLUDES := $(LOCAL_PATH)/jsireact

# Header search path for modules that depend on this module
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

LOCAL_CFLAGS += -fexceptions -frtti -std=c++14 -Wall

LOCAL_STATIC_LIBRARIES = libreactnative

# Name of this module.
LOCAL_MODULE := jscallinvoker

# Compile all local c++ files under ./jsireact
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/jsireact/*.cpp)

# Build the files in this directory as a shared library
include $(BUILD_STATIC_LIBRARY)
