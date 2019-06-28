//
//  LD_Extension.m
//  pukka-ios
//
//  Created by lidi on 16/5/3.
//  Copyright © 2016年 Pukka Inc. All rights reserved.
//

#import "LDExtension.h"
#import <CoreServices/CoreServices.h>

@implementation LDExtension

+ (BOOL)isNotchScreen {
    BOOL isNotchScreen = NO;
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {//判断是否是手机
        return isNotchScreen;
    }
    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = [[[UIApplication sharedApplication] delegate] window];
        if (mainWindow.safeAreaInsets.bottom > 0.0) {
            isNotchScreen = YES;
        }
    }
    return isNotchScreen;
}
//path为要获取MIMEType的文件路径
+ (NSString *)mimeTypeAtFilePath:(NSString *)path
{
    if (![[[NSFileManager alloc] init] fileExistsAtPath:path]) {
        return nil;
    }
    CFStringRef UTI = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, (__bridge CFStringRef)[path pathExtension], NULL);
    CFStringRef MIMEType = UTTypeCopyPreferredTagWithClass (UTI, kUTTagClassMIMEType);
    CFRelease(UTI);
    if (!MIMEType) {
        return @"application/octet-stream";
    }
    return (__bridge NSString *)(MIMEType);
}
+ (void)mimeTypeWithRequestPath:(NSString *)path completion:(void *(^_Nullable)(NSString *))block {
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL fileURLWithPath:path] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //MIMEType = 大类型/小类型
        block(response.MIMEType);
    }] resume];
}
+(void)archiveObject:(id)object withFileName:(NSString *)fileName{
    NSString *filePath = [NSHomeDirectory() stringByAppendingString:[NSString stringWithFormat:@"/Documents/%@",fileName]];
    BOOL sucess = [NSKeyedArchiver archiveRootObject:object toFile:filePath];
    if (sucess) {
        NSLog(@"保存%@成功",fileName);
    }
}
+(id)unArchiveObjectWithFileName:(NSString *)fileName{
    NSString *filePath = [NSHomeDirectory() stringByAppendingString:[NSString stringWithFormat:@"/Documents/%@",fileName]];
    id object = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"unArchiveObject：%@",object);
    return object;
}

+ (void)findResponderChain:(UIResponder *)responder {
    static NSString *log = @"\n--------------------------- ResponderChain ----------------------------\n\n";
    if (responder.nextResponder) {
        log = [log stringByAppendingString:[NSString stringWithFormat:@"%@\n↓\n",responder]];
        [self findResponderChain:responder.nextResponder];
    }else{
        log = [log stringByAppendingString:[NSString stringWithFormat:@"%@\n\n--------------------------- ResponderChain ----------------------------",responder]];
        NSLog(@"%@",log);
        log = @"\n--------------------------- ResponderChain ----------------------------\n\n";
    }
}
@end
