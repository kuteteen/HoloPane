DEBUG = 0
FINALPACKAGE = 1

SHARED_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak Prefs

include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"