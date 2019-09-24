//
//  UIView+LDCategory.h
//  carDV
//
//  Created by lidi on 2018/12/22.
//  Copyright © 2018 rc. All rights reserved.
//

#import <UIKit/UIKit.h>

/*****************************  LDCategory  ********************************/
@interface UIView (LDCategory)

/**
 添加阴影效果
 */
- (void)LD_addDefalutShadow;
- (void)LD_addShadowWithColor:(UIColor *)shadowColor offset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius;


/**
 添加边框
 */
- (void)LD_addBorderWithBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth;

@end

/*****************************  frameAddition  ********************************/
@interface UIView (frameAddition)

@property (nonatomic, assign) CGFloat ld_x;
@property (nonatomic, assign) CGFloat ld_y;
@property (nonatomic, assign) CGFloat ld_centerX;
@property (nonatomic, assign) CGFloat ld_centerY;
@property (nonatomic, assign) CGFloat ld_width;
@property (nonatomic, assign) CGFloat ld_height;
@property (nonatomic, assign) CGSize  ld_size;
@property (nonatomic, assign) CGPoint ld_origin;
/**
 view上边的y坐标
 */
@property (nonatomic, assign) CGFloat ld_top;
/**
 view左边的x坐标
 */
@property (nonatomic, assign) CGFloat ld_left;
/**
 view右边的x坐标
 */
@property (nonatomic, assign) CGFloat ld_right;
/**
 view下边的y坐标
 */
@property (nonatomic, assign) CGFloat ld_bottom;

@end
