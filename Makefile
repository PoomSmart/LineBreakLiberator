ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	TARGET = iphone:clang:latest:15.0
else
	TARGET = iphone:clang:14.5:11.0
	export PREFIX = $(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/
endif
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = MobileSafari

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LineBreakLiberator

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
