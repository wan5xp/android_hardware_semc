LOCAL_PATH:= $(call my-dir)

#
# libUMP
#

include $(CLEAR_VARS)

UMP_DIR := .
UDD_OS := linux

LOCAL_SRC_FILES:= \
	$(UMP_DIR)/arch_011_udd/ump_frontend.c \
	$(UMP_DIR)/arch_011_udd/ump_ref_drv.c \
	$(UMP_DIR)/arch_011_udd/ump_arch.c \
	$(UMP_DIR)/os/$(UDD_OS)/ump_uku.c \
	$(UMP_DIR)/os/$(UDD_OS)/ump_osu_memory.c \
	$(UMP_DIR)/os/$(UDD_OS)/ump_osu_locks.c

LOCAL_CFLAGS:= \
	-Wall \
	-march=armv7-a \
	-mthumb-interwork \
	-fno-strict-aliasing \
	-Wno-strict-aliasing \
	-Wno-long-long \
	-O3

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/$(UMP_DIR)/include \
	$(LOCAL_PATH)/$(UMP_DIR)/include/ump

LOCAL_MODULE:=libUMP

LOCAL_MODULE_TAGS:=optional

include $(BUILD_SHARED_LIBRARY)
