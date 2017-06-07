//
//  NSString+Custom.m
//  weipiHD
//
//  Created by majunliang on 15/12/16.
//  Copyright © 2015年 majunliang. All rights reserved.
//

#import "NSString+Custom.h"

@implementation NSString (Custom)

+ (NSString *)getSimpleTime:(NSString *)str{

    NSArray *times = [str componentsSeparatedByString:@"-"];
    NSInteger year = [times[0] integerValue];
    NSInteger month = [times[1] integerValue];
    NSInteger day = [times[2] integerValue];
    NSString *simpleStr = [NSString stringWithFormat:@"%lu-%lu-%lu",(long)year, (long)month, (long)day];

    return simpleStr;
}
+ (NSString *)getSimpleTime1:(NSString *)str{

    NSString *month = [str substringToIndex:2];
    NSString *day = [str substringWithRange:NSMakeRange(3, 2)];
    
    NSInteger mons = [month integerValue];
    NSInteger days = [day integerValue];
    NSString *newStr = [NSString stringWithFormat:@"%zd月%zd日",mons,days];
    
    return newStr;
    
}

- (float)widthWithFont:(float)font limitHeight:(float)height
{
    NSDictionary *attribute = @{NSFontAttributeName : [UIFont systemFontOfSize:font]};
    CGSize size = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil].size;
    return size.width;
}

- (float)heightWithFont:(float)font limitWidth:(float)width
{
    NSDictionary *attribute = @{NSFontAttributeName : [UIFont systemFontOfSize:font]};
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil].size;
    return size.height;
}

- (NSString *)stringByTrimingWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)pinyinString
{
    NSMutableString *source = [self mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)source, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)source, NULL, kCFStringTransformStripDiacritics, NO);
    return source;
}

- (BOOL)isPureInt
{
    NSScanner *scan = [NSScanner scannerWithString:self];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

-(NSString *)appBundleFilePath
{
	return [[NSBundle mainBundle]pathForResource:self ofType:nil];
}
@end
