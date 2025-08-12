# Copyright 2020 The Shaderc Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE:=shaderc_util
LOCAL_CXXFLAGS:=-O3 -fPIC -std=c++17 -fno-exceptions -fno-rtti -DENABLE_HLSL=1 -mllvm -polly -flto=auto
LOCAL_EXPORT_C_INCLUDES:=$(LOCAL_PATH)/include
LOCAL_SRC_FILES:=src/args.cc \
                src/compiler.cc \
		src/file_finder.cc \
		src/io_shaderc.cc \
		src/message.cc \
		src/resources.cc \
		src/shader_stage.cc \
		src/spirv_tools_wrapper.cc \
		src/version_profile.cc
LOCAL_STATIC_LIBRARIES:=SPIRV SPIRV-Tools-opt glslang
LOCAL_C_INCLUDES:=$(LOCAL_PATH)/include
LOCAL_CFLAGS += -DANDROID -pipe -integrated-as -fno-plt -O3 -flto=thin -mllvm -polly -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -mllvm -polly-run-inliner -mllvm -polly-run-dce
LOCAL_LDFLAGS += -flto=thin -Wl,-plugin-opt=-emulated-tls=0 -fuse-ld=lld
LOCAL_CFLAGS += -O3 -fPIC -DPIC -flto=thin -fwhole-program-vtables -mllvm -polly -pthread -Wall -fno-emulated-tls -march=armv8-a+simd+crc+crypto+fp16 -mcpu=cortex-a76 -fdata-sections -ffunction-sections -fmerge-all-constants
LOCAL_CXXLAGS += -O3 -fPIC -DPIC -flto=thin -fwhole-program-vtables -mllvm -polly -pthread -Wall -fno-emulated-tls -march=armv8-a+simd+crc+crypto+fp16 -mcpu=cortex-a76 -fdata-sections -ffunction-sections -fmerge-all-constants
include $(BUILD_SHARED_LIBRARY)
