%group PIP

// Override MobileGestalt to always return true for PIP key - Acknowledgements: Andrew Wiik (LittleX) and Duraid Abdul (Neptune)
extern "C" Boolean MGGetBoolAnswer(CFStringRef);
%hookf(Boolean, MGGetBoolAnswer, CFStringRef key)
{
	#define k(key_) CFEqual(key, CFSTR(key_))
	if (k("nVh/gwNpy7Jv1NOk00CMrw"))
		return YES;
		return %orig;
}

%end

%ctor
{
	NSString *settingsPath = @"/var/mobile/Library/Preferences/me.wdkf.holopane.plist";
	NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
	NSNumber* isTweakEnabled = [prefs objectForKey:@"Switch_Tweak"];
		
	if ([isTweakEnabled boolValue] == YES)
	{
		%init(PIP);
	}
}