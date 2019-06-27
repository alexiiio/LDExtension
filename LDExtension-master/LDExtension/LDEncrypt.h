//
//  LDEncrypt.h
//  Amusing
//
//  Created by yl-yin on 2019/6/21.
//  Copyright © 2019 Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LDEncrypt : NSObject

+ (NSString *)md5:(NSString *)inputText;
+ (NSString*)sha1:(NSString *)inputText;
+(NSString*)base64Encode:(NSString *)input;
+(NSString*)base64Decode:(NSString *)input;

+ (NSString *)AESEncryptStringWithString:(NSString *)string andKey:(NSString *)key;
+ (NSString *)AESDecryptStringWithString:(NSString *)string andKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
