//
//  LD_Extension.h
//  pukka-ios
//
//  Created by lidi on 16/5/3.
//  Copyright © 2016年 Pukka Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define IS_NotchScreen [LDExtension isNotchScreen]
#define ConstHeight_StatusBar (IS_NotchScreen ? 44.0 : 20.0)        // 为了在导航栏隐藏时也可正常获取
#define Height_NavAndStatusBar (IS_NotchScreen ? 88.0 : 64.0)
#define Height_TabBar (IS_NotchScreen ? 83.0 : 49.0)

@interface LDExtension : NSObject
+ (BOOL)isNotchScreen;
 // 根据网络请求结果获取 mimeType
+ (NSString *)mimeTypeAtFilePath:(NSString *)path;
// c语言api获取 mimeType
+ (void)mimeTypeWithRequestPath:(NSString *)path completion:(void *(^_Nullable)(NSString *))block;
/**
 归档对象，记得引入NSObject+coding类目，可以归档自定义类型数据。保存到Document目录
 @param object 待归档对象
 @param fileName 保存的文件名，要有唯一性
 */
+(void)archiveObject:(id)object withFileName:(NSString *)fileName;
/**
 反归档取出保存的对象
 @param fileName 保存的文件名
 @return 存的是什么类型，取出时就要转换成什么类型来用
 */
+(id)unArchiveObjectWithFileName:(NSString *)fileName;

/**
 逐级查找打印对象的上一级响应者
 */
+ (void)findResponderChain:(UIResponder *)responder;

@end

NS_ASSUME_NONNULL_END
