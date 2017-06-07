//
//  UIApplication+Custom.h
//  Sellermajunliang
//
//  Created by 张 竣杰 on 14/11/30.
//  Copyright (c) 2014年 majunliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Custom)

+ (void)callPhone:(NSString *)phoneNumber;
+ (void)openURL:(NSString *)urlString;

@end
