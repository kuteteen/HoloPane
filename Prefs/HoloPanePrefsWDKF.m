#include "HoloPanePrefsWDKF.h"

@implementation HoloPanePrefsWDKF

- (NSArray *)specifiers
	{
	if (!_specifiers)
		{
			_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
		}
	
	return _specifiers;
	}

- (void)linkSourceCode
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/WDKFernando/HoloPane"]];
	}

- (void)linkDonate
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.me/kevondwfernando"]];
	}

- (void)respring
	{
		UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Respring" message:@"Are you sure you want to respring?" preferredStyle:UIAlertControllerStyleActionSheet];
    
		UIAlertAction *respringBtn = [UIAlertAction actionWithTitle:@"Respring" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action)
			{
				NSTask *task = [[NSTask alloc] init];
				[task setLaunchPath:@"/usr/bin/killall"];
				[task setArguments:@[@"-9", @"SpringBoard"]];
				[task launch];
			}
		];
    
		UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action)
			{

			}
		];
    
		[alert addAction:respringBtn];
		[alert addAction:cancelBtn];
    
		[self presentViewController:alert animated:YES completion:nil];
	}

@end
