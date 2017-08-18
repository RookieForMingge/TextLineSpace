//
//  NSObject+ZM.m
//  TextLineSpace
//
//  Created by Hosel on 2017/8/17.
//  Copyright © 2017年 Hosel. All rights reserved.
//

#import "NSObject+ZM.h"

@implementation NSObject (ZM)

/*
 *  设置行间距和字间距
 *
 *  @param string    字符串
 *  @param lineSpace 行间距
 *  @param kern      字间距
 *  @param font      字体大小
 *
 *  @return 富文本
 */
- (NSAttributedString *)getAttributedWithString:(NSString *)string WithLineSpace:(CGFloat)lineSpace kern:(CGFloat)kern font:(UIFont *)font{
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    //调整行间距
    paragraphStyle.lineSpacing = lineSpace;
    NSDictionary *attriDict = @{NSParagraphStyleAttributeName:paragraphStyle,NSKernAttributeName:@(kern),
        NSFontAttributeName:font};
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string attributes:attriDict];
    return attributedString;
}

/* 获取富文本的高度
 *
 * @param string    文字
 * @param lineSpace 行间距
 * @param kern      字间距
 * @param font      字体大小
 * @param width     文本宽度
 *
 * @return size
 */
- (CGSize)getAttributionHeightWithString:(NSString *)string lineSpace:(CGFloat)lineSpace kern:(CGFloat)kern font:(UIFont *)font width:(CGFloat)width {
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineSpacing = lineSpace;
    NSDictionary *attriDict = @{
                            NSParagraphStyleAttributeName:paragraphStyle,
                                NSKernAttributeName:@(kern),
                                NSFontAttributeName:font};
    CGSize size = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attriDict context:nil].size;
    return size;
}

@end
