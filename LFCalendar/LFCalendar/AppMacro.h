//
//  AppMacro.h
//  LFCalendar
//
//  Created by 路飞 on 2017/6/5.
//  Copyright © 2017年 路飞. All rights reserved.
//

#ifndef AppMacro_h
#define AppMacro_h


//RGB值
#define COLORRGB(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//设置状态栏状态
#define SetStatusBarLight \
[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

#define SetStatusBarDefault \
[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];


//设备宽高
#define kScreenWidth        [UIScreen mainScreen].bounds.size.width
#define kScreenHeight       [UIScreen mainScreen].bounds.size.height




#endif /* AppMacro_h */
