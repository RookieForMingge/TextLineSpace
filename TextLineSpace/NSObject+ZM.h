//
//  NSObject+ZM.h
//  TextLineSpace
//
//  Created by Hosel on 2017/8/17.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (ZM)

- (NSAttributedString *)getAttributedWithString:(NSString *)string WithLineSpace:(CGFloat)lineSpace kern:(CGFloat)kern font:(UIFont *)font;

- (CGSize)getAttributionHeightWithString:(NSString *)string lineSpace:(CGFloat)lineSpace kern:(CGFloat)kern font:(UIFont *)font width:(CGFloat)width;

@end
