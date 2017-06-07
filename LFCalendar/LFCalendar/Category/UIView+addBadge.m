//
//  UIView+addBadge.m
//  yinji
//
//  Created by majunliang on 16/8/29.
//  Copyright © 2016年 印记. All rights reserved.
//

#import "UIView+addBadge.h"

@implementation UIView (addBadge)

- (void)addBadgeWithTitle:(NSString *)title{
    
    UIView *view = [self viewWithTag:100001];
    [view removeFromSuperview];
    
    UILabel *lable = [UILabel new];
    lable.viewSize = CGSizeMake(15, 15);
    lable.layer.cornerRadius = 16/2;
    lable.clipsToBounds = YES;
    lable.tag = 100001;
    lable.textAlignment = NSTextAlignmentCenter;
    
    lable.font = [UIFont systemFontOfSize:9];
    lable.backgroundColor = UIColorFromRGB(0x59ACF3);
    lable.textColor = [UIColor whiteColor];
    lable.text = title;
    [self addSubview:lable];
    lable.center = CGPointMake(self.width/2, self.height/2);
    lable.centerX = lable.centerX+10;
    lable.centerY = lable.centerY -3;
}

@end
