//
//  LRImageManagerDebug.m
//  Pods
//
//  Created by Luis Ascorbe on 08/07/15.
//
//

#import "LRImageManagerDebug.h"

@implementation LRImageManagerDebug

static BOOL LRImageManagerDebugModeEnabled = NO;

+ (BOOL)isDebugModeEnabled
{
    return LRImageManagerDebugModeEnabled;
}

+ (void)setDebugModeEnabled:(BOOL)debugModeEnabled
{
    if (LRImageManagerDebugModeEnabled == debugModeEnabled)
    {
        return;
    }
    
    LRILog(debugModeEnabled ? @"Debug Mode Enabled" : @"Debug Mode Disabled");
    LRImageManagerDebugModeEnabled = debugModeEnabled;
}

void LRILog(NSString *format, ...)
{
    if (!LRImageManagerDebugModeEnabled)
    {
        return;
    }
    
    va_list args;
    va_start(args, format);
    NSLogv([@"[LRImageManager] " stringByAppendingString:format], args);
    va_end(args);
}

@end
