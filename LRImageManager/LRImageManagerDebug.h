//
//  LRImageManagerDebug.h
//  Pods
//
//  Created by Luis Ascorbe on 08/07/15.
//
//

#import <Foundation/Foundation.h>

#define LRI_LOG(__FORMAT__, ...) LRILog((@"%s line %d $ " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

@interface LRImageManagerDebug : NSObject

//** Returns whether LRImageManager debug mode is enabled or not */
+ (BOOL)isDebugModeEnabled;

//** Enable or disable the debug mode (disabled by default) */
+ (void)setDebugModeEnabled:(BOOL)debugModeEnabled;

//** Custom LRImageManager logger (TODO: CocoaLumberjack support) */
OBJC_EXTERN void LRILog(NSString *format, ...) NS_FORMAT_FUNCTION(1,2);

@end
