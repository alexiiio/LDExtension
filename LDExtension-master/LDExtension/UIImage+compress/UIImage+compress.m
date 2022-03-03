//
//  UIImage+compress.m
//  LDExtension-master
//
//  Created by LD on 2022/3/3.
//  Copyright © 2022 Alex. All rights reserved.
//

#import "UIImage+compress.h"

#define CompressImageResolutionMaxMargin 1080

@implementation UIImage (compress)


/**
  image compress
  
 @return thumb image
 */
- (UIImage *)LD_Compress {
    CGSize size = [self wxImageSize];
    UIImage *reImage = [self resizedImage:size];
    NSData *data = UIImageJPEGRepresentation(reImage, 0.5);
    return [[UIImage alloc] initWithData:data];
}


/**
  compress image size

 @return thumb image size
 */
- (CGSize)wxImageSize {
    CGFloat width = self.size.width;
    CGFloat height = self.size.height;
    CGFloat boundary = CompressImageResolutionMaxMargin;
    
    CGFloat minlength = MIN(width, height);
    if (minlength <= boundary) {
        return CGSizeMake(width, height);
    }
    
    if (MIN(width, height) >= boundary) {
        CGFloat x = MIN(width, height) / boundary;
        if (width < height) {
            width = boundary;
            height = height / x;
        } else {
            height = boundary;
            width = width / x;
        }
    }
    return CGSizeMake(width, height);

}

/**
 Zoom the picture to the specified size
  
 @return new image
 */
- (UIImage *)resizedImage:(CGSize)newSize {
    CGRect newRect = CGRectMake(0, 0, newSize.width, newSize.height);
    UIGraphicsBeginImageContext(newRect.size);
    UIImage *newImage = [[UIImage alloc] initWithCGImage:self.CGImage scale:1 orientation:self.imageOrientation];
    [newImage drawInRect:newRect];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


@end
