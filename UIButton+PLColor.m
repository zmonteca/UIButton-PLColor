//
//  UIButton+PLColor.m
//  www.gulosolutions.com
//
//  Created by Zachary Wilson on 3/17/15.
//  Copyright (c) 2015 Gulo Solutions. All rights reserved.
//

#import "UIButton+PLColor.h"

@implementation UIButton (PLColor)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state
{
    UIImage *image = [UIButton imageWithColor:color];

    [self setBackgroundImage:image forState:state];
}

@end
