 ARCHS = arm64 arm64e
TARGET = iphone:clang:17.2:15.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Replace5GPlus

Replace5GPlus_FILES = Tweak.x
Replace5GPlus_CFLAGS = -fobjc-arc
Replace5GPlus_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
