TARGET := iphone:9.0:7.1
ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = citfix
citfix_FILES = Tweak.xm
citfix_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
