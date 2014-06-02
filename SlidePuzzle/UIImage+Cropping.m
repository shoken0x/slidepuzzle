//
//  UIImage+Cropping.m
//  SlidePuzzle
//
//  Created by Shoken Fujisaki on 6/2/14.
//  Copyright (c) 2014 Shoken Fujisaki. All rights reserved.
//

#import "UIImage+Cropping.h"

@implementation UIImage (Cropping)

- (UIImage *)croppedImageInRect:(CGRect)rect
{
    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, rect);
    UIImage *croppedImage = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    
    return croppedImage;
}

@end
