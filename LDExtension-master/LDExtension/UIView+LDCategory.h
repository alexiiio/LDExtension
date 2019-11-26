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
/**
 添加圆角
 
 @param radius 圆角半径，最大为宽或高的一半，再大没用
 @param corners 圆角所在位置，可以设置多个值。如 UIRectCornerTopLeft | UIRectCornerTopRight 表示左上和右上同时设置圆角
 */
- (void)LD_addCornerRadius:(CGFloat)radius andRoundingCorners:(UIRectCorner)corners;
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
