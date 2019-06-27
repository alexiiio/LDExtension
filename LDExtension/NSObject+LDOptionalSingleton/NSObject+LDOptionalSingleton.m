//
//  NSObject+LDSingleton.m
//  Singleton
//
//  Created by lidi on 2019/4/17.
//  Copyright © 2019 Li. All rights reserved.
//

#import "NSObject+LDOptionalSingleton.h"
#import <objc/runtime.h>
static char *LDOptionalSingletonKey = "LD_OptionalSingleton";
@implementation NSObject (LDOptionalSingleton)
+ (instancetype)LD_sharedSingleton {
    return [self LD_sharedInstance];
}
+ (void)LD_freeSharedSingleton {
    [self LD_freeSharedInstance];
}
+ (instancetype)LD_sharedInstance {
    Class selfClass = [self class];
    id instance;
    @synchronized (self) {
        instance = objc_getAssociatedObject(selfClass, LDOptionalSingletonKey);
        if (!instance){
            instance = [[selfClass alloc] init];
            objc_setAssociatedObject(selfClass, LDOptionalSingletonKey, instance, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
    return instance;
}
+ (void)LD_freeSharedInstance {
    Class selfClass = [self class];
    @synchronized (self) {
        objc_setAssociatedObject(selfClass, LDOptionalSingletonKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}
@end
