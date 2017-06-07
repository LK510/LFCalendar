//
//  NSString+Custom.h
//  weipiHD
//
//  Created by majunliang on 15/12/16.
//  Copyright © 2015年 majunliang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Custom)

- (float)widthWithFont:(float)font limitHeight:(float)height;

- (float)heightWithFont:(float)font limitWidth:(float)width;

- (NSString *)stringByTrimingWhitespace;

//字符串转拼音
- (NSString *)pinyinString;

//判断是否为整型
- (BOOL)isPureInt;

+ (NSString *)getSimpleTime:(NSString *)str;

+ (NSString *)getSimpleTime1:(NSString *)str;

- (NSString *)appBundleFilePath;
@end
