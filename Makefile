DEBUG = 0
FINALPACKAGE = 1

SHARED_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak Prefs

include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	echo "HoloPane"
	echo "Version 1.0.2"
	echo "made by WDKF (W. D. K. Fernando)"
	echo "© 2019 W. D. K. Fernando - No rights reserved"

	install.exec "killall -9 SpringBoard"
