//
//  LDDeviceModel.m
//  Amusing
//
//  Created by yl-yin on 2019/6/27.
//  Copyright © 2019 Li. All rights reserved.
//

#import "LDDeviceModel.h"
#import <sys/utsname.h>
@implementation LDDeviceModel
/*
    https://www.theiphonewiki.com/wiki/Models
 */
+ (NSString*)getDeviceModel
{
    // 需要#import "sys/utsname.h"
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    //iPhone
    if ([deviceString isEqualToString:@"iPhone1,1"])    return @"iPhone1G";
    if ([deviceString isEqualToString:@"iPhone1,2"])    return @"iPhone3G";
    if ([deviceString isEqualToString:@"iPhone2,1"])    return @"iPhone3GS";
    if ([deviceString isEqualToString:@"iPhone3,1"])    return @"iPhone4";
    if ([deviceString isEqualToString:@"iPhone3,2"])    return @"iPhone4";
    if ([deviceString isEqualToString:@"iPhone3,3"])    return @"iPhone4";
    if ([deviceString isEqualToString:@"iPhone4,1"])    return @"iPhone4S";
    if ([deviceString isEqualToString:@"iPhone5,1"])    return @"iPhone5";
    if ([deviceString isEqualToString:@"iPhone5,2"])    return @"iPhone5";
    if ([deviceString isEqualToString:@"iPhone5,3"])    return @"iPhone5C";
    if ([deviceString isEqualToString:@"iPhone5,4"])    return @"iPhone5C";
    if ([deviceString isEqualToString:@"iPhone6,1"])    return @"iPhone5S";
    if ([deviceString isEqualToString:@"iPhone6,2"])    return @"iPhone5S";
    if ([deviceString isEqualToString:@"iPhone7,1"])    return @"iPhone6 Plus";
    if ([deviceString isEqualToString:@"iPhone7,2"])    return @"iPhone6";
    if ([deviceString isEqualToString:@"iPhone8,1"])    return @"iPhone6s";
    if ([deviceString isEqualToString:@"iPhone8,2"])    return @"iPhone6s Plus";
    if ([deviceString isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    if ([deviceString isEqualToString:@"iPhone9,1"]||[deviceString isEqualToString:@"iPhone9,3"])    return @"iPhone7";
    if ([deviceString isEqualToString:@"iPhone9,2"]||[deviceString isEqualToString:@"iPhone9,4"])    return @"iPhone7 Plus";
    if ([deviceString isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([deviceString isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    if ([deviceString isEqualToString:@"iPhone11,8"]) return @"iPhone XR";
    if ([deviceString isEqualToString:@"iPhone11,2"]) return @"iPhone XS";
    if ([deviceString isEqualToString:@"iPhone11,4"]) return @"iPhone XS Max";
    if ([deviceString isEqualToString:@"iPhone11,6"]) return @"iPhone XS Max";
    
    //iPod
    
    if ([deviceString isEqualToString:@"iPod1,1"]) return @"iPod Touch 1";
    if ([deviceString isEqualToString:@"iPod2,1"]) return @"iPod Touch 2";
    if ([deviceString isEqualToString:@"iPod3,1"]) return @"iPod Touch 3";
    if ([deviceString isEqualToString:@"iPod4,1"]) return @"iPod Touch 4";
    if ([deviceString isEqualToString:@"iPod5,1"]) return @"iPod Touch 5";
    if ([deviceString isEqualToString:@"iPod7,1"]) return @"iPod Touch 6";
    if ([deviceString isEqualToString:@"iPod9,1"]) return @"iPod Touch 7";

    //iPad
    if ([deviceString isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([deviceString isEqualToString:@"iPad2,1"])      return @"iPad2";
    if ([deviceString isEqualToString:@"iPad2,2"])      return @"iPad2";
    if ([deviceString isEqualToString:@"iPad2,3"])      return @"iPad2";
    if ([deviceString isEqualToString:@"iPad2,4"])      return @"iPad2";
    if ([deviceString isEqualToString:@"iPad3,1"])      return @"iPad3";
    if ([deviceString isEqualToString:@"iPad3,2"])      return @"iPad3";
    if ([deviceString isEqualToString:@"iPad3,3"])      return @"iPad3";
    if ([deviceString isEqualToString:@"iPad3,4"])      return @"iPad4";
    if ([deviceString isEqualToString:@"iPad3,5"])      return @"iPad4";
    if ([deviceString isEqualToString:@"iPad3,6"])      return @"iPad4";
    if ([deviceString isEqualToString:@"iPad6,11"])      return @"iPad5";
    if ([deviceString isEqualToString:@"iPad6,12"])      return @"iPad5";
    if ([deviceString isEqualToString:@"iPad7,5"])      return @"iPad6";
    if ([deviceString isEqualToString:@"iPad7,6"])      return @"iPad6";
    // iPad air
    if ([deviceString isEqualToString:@"iPad4,1"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad4,2"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad6,11"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad6,12"])      return @"iPad Air";
    if ([deviceString isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    if ([deviceString isEqualToString:@"iPad11,3"])      return @"iPad Air 3";
    if ([deviceString isEqualToString:@"iPad11,4"])      return @"iPad Air 3";
    // iPad pro
    if ([deviceString isEqualToString:@"iPad7,1"])      return @"iPad Pro 2(12.9 inch)";
    if ([deviceString isEqualToString:@"iPad7,2"])      return @"iPad Pro 2(12.9 inch)";
    if ([deviceString isEqualToString:@"iPad7,3"])      return @"iPad Pro (10.5 inch)";
    if ([deviceString isEqualToString:@"iPad7,4"])      return @"iPad Pro (10.5 inch)";
    if ([deviceString isEqualToString:@"iPad6,7"])      return @"iPad Pro (12.9 inch)";
    if ([deviceString isEqualToString:@"iPad6,8"])      return @"iPad Pro (12.9 inch)";
    if ([deviceString isEqualToString:@"iPad6,3"])      return @"iPad Pro (9.7 inch)";
    if ([deviceString isEqualToString:@"iPad6,4"])      return @"iPad Pro (9.7 inch)"; 
    if ([deviceString isEqualToString:@"iPad8,1"])      return @"iPad Pro (11 inch)";
    if ([deviceString isEqualToString:@"iPad8,2"])      return @"iPad Pro (11 inch)";
    if ([deviceString isEqualToString:@"iPad8,3"])      return @"iPad Pro (11 inch)";
    if ([deviceString isEqualToString:@"iPad8,4"])      return @"iPad Pro (11 inch)";
    if ([deviceString isEqualToString:@"iPad8,5"])      return @"iPad Pro 3(12.9 inch)";
    if ([deviceString isEqualToString:@"iPad8,6"])      return @"iPad Pro 3(12.9 inch)";
    if ([deviceString isEqualToString:@"iPad8,7"])      return @"iPad Pro 3(12.9 inch)";
    if ([deviceString isEqualToString:@"iPad8,8"])      return @"iPad Pro 3(12.9 inch)";
    // iPad mini
    if ([deviceString isEqualToString:@"iPad2,5"])      return @"iPad mini";
    if ([deviceString isEqualToString:@"iPad2,6"])      return @"iPad mini";
    if ([deviceString isEqualToString:@"iPad2,7"])      return @"iPad mini";
    if ([deviceString isEqualToString:@"iPad4,4"])      return @"iPad mini 2";
    if ([deviceString isEqualToString:@"iPad4,5"])      return @"iPad mini 2";
    if ([deviceString isEqualToString:@"iPad4,6"])      return @"iPad mini 2";
    if ([deviceString isEqualToString:@"iPad4,7"])      return @"iPad mini 3";
    if ([deviceString isEqualToString:@"iPad4,8"])      return @"iPad mini 3";
    if ([deviceString isEqualToString:@"iPad4,9"])      return @"iPad mini 3";
    if ([deviceString isEqualToString:@"iPad5,1"])      return @"iPad mini 4";
    if ([deviceString isEqualToString:@"iPad5,2"])      return @"iPad mini 4";
    if ([deviceString isEqualToString:@"iPad11,1"])      return @"iPad mini 5";
    if ([deviceString isEqualToString:@"iPad11,2"])      return @"iPad mini 5";
    
    // Simulator
    if ([deviceString isEqualToString:@"i386"])         return @"Simulator";
    if ([deviceString isEqualToString:@"x86_64"])       return @"Simulator";

    return deviceString;
}
@end
