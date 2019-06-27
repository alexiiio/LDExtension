//
//  NSObject+LDSingleton.h
//  Singleton
//
//  Created by lidi on 2019/4/17.
//  Copyright © 2019 Li. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
  遵守该协议的类就可以拥有属于自己的单例。其他获取实例的方法被禁用。
 */
@protocol LDOptionalSingleton <NSObject>
@optional

/**
 获取单例对象
 */
+ (instancetype)LD_sharedSingleton;
/**
 销毁单例对象
 */
+ (void)LD_freeSharedSingleton;

/**
 禁用其他创建实例方法
 */
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (id)copy NS_UNAVAILABLE;
- (id)mutableCopy NS_UNAVAILABLE;
@end

/**
 遵守协议获得全局实例对象，伪单例
 */
@protocol LDOptionalGlobalInstance <NSObject>
@optional
/**
 获取全局实例对象
 */
+ (instancetype)LD_sharedInstance;
/**
 销毁全局实例对象
 */
+ (instancetype)LD_freeSharedInstance;
@end

/**
声明协议，只要继承该协议就相当于继承了+(instancetype)LD_sharedInstance;方法，
同时，NSObject的类目LDOptionalSingleton已经实现了单例的初始化方法。
 */
@interface NSObject (LDOptionalSingleton)

@end


