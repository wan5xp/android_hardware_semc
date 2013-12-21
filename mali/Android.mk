mali_modules := egl mali ump gralloc

MALI_MAKEFILES := $(call all-named-subdir-makefiles,$(mali_modules))

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(MALI_MAKEFILES)
