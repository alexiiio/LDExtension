//
//  UIImage+LDCategory.h
//  carDV
//
//  Created by lidi on 2018/8/15.
//  Copyright © 2018年 rc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LDCategory)

/**
 根据颜色创建图片

 @param color 图片的颜色
 @return 生成的纯色图片
 */
+(UIImage*)ld_imageWithColor:(UIColor*)color;
+(UIImage*)ld_imageWithColor:(UIColor*)color size:(CGSize)size;

/**
 将图片剪裁至目标尺寸
 */
+(UIImage *)imageByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize;
/**
 改变图片的颜色，不保留灰度值
 */
- (UIImage *) ld_imageWithTintColor:(UIColor *)tintColor;
/**
 改变图片的颜色，保留灰度值
 */
- (UIImage *) ld_imageWithGradientTintColor:(UIColor *)tintColor;

/**
图片切圆角
 */
- (UIImage *)imageWithCornerRadius:(CGFloat)cornerRadius;
- (UIImage *)imageWithCornerRadius:(CGFloat)cornerRadius size:(CGSize)size;

/**
 *  图片增加水印
 *
 *  @param subImage   水印图片
 *  @param posRect    水印的位置 和 水印的大小
 *
 *  @return 加水印后的新图片
 */
- (UIImage *)addSubImage:(UIImage *)subImage subImagePosition:(CGRect)posRect;


/// 以原始大小添加图片到中心
/// @param subImage 水印图片
- (UIImage *)addSubImageToCenter:(UIImage *)subImage;

//- (UIImage *)cropImageWithFrame:(CGRect)frame;


/// 压缩图片到指定大小
/// @param maxLength 最大图片大小
- (UIImage *)compressImageToByte:(NSUInteger)maxLength;

@end

@interface UIImage (Blur)
//玻璃化效果，这里与系统的玻璃化枚举效果一样，但只是一张图
- (UIImage *)imageByBlurSoft;

- (UIImage *)imageByBlurLight;

- (UIImage *)imageByBlurExtraLight;

- (UIImage *)imageByBlurDark;

- (UIImage *)imageByBlurWithTint:(UIColor *)tintColor;

- (UIImage *)imageByBlurRadius:(CGFloat)blurRadius
                     tintColor:(UIColor *)tintColor
                      tintMode:(CGBlendMode)tintBlendMode
                    saturation:(CGFloat)saturation
                     maskImage:(UIImage *)maskImage;

- (UIImage *) boxblurImageWithBlur:(CGFloat)blur exclusionPath:(UIBezierPath *)exclusionPath;
@end





@interface UIImage (ImageEffects)

//图片效果

- (UIImage *)applyLightEffect;
- (UIImage *)applyExtraLightEffect;
- (UIImage *)applyDarkEffect;
- (UIImage *)applyBlurEffect;
- (UIImage *)applyTintEffectWithColor:(UIColor *)tintColor;
- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius
                       tintColor:(UIColor *)tintColor
           saturationDeltaFactor:(CGFloat)saturationDeltaFactor
                       maskImage:(UIImage *)maskImage;
@end
