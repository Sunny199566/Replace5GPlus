ARCHS = arm64 arm64e
TARGET = iphone:clang:14.0:15.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Replace5GPlus

Replace5GPlus_FILES = Tweak.x
Replace5GPlus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk