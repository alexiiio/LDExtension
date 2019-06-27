//
//  LDExchangeAlgorithm.h
//  Amusing
//
//  Created by yl-yin on 2019/6/21.
//  Copyright © 2019 Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LDExchangeAlgorithm : NSObject

/**
 一个字符串交换加密算法

 @param input 明文字符串
 @return 与明文等长的密文字符串
 */
+ (NSString *)encrypt:(NSString *)input;

/**
 密文转换成明文
 */
+ (NSString *)decrypt:(NSString *)input;


/**
 改变加密系数，可以得到不一样的密文
 加密解密需用相同的系数
 @param key 正整数类型，1-50比较合适
 */
+ (void)setEncryptKey:(NSUInteger)key;

@end

NS_ASSUME_NONNULL_END
