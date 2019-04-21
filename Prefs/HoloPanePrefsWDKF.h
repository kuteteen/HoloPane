#import <Preferences/PSListController.h>

@interface HoloPanePrefsWDKF : PSListController

@end


#import <Foundation/NSObject.h>

@class NSString, NSArray;

@interface NSTask : NSObject

- (void)setLaunchPath:(NSString *)path;
- (void)setArguments:(NSArray *)arguments;
- (void)launch;

@end
