//
//  UIView+Custom.m
//  SellerDongPi
//
//  Created by majunliang on 14/12/18.
//  Copyright (c) 2014年 DongPi. All rights reserved.
//

#import "UIView+Custom.h"
@implementation UIView (Custom)


+ (instancetype)viewWithFrame:(CGRect)frame
              backgroundColor:(UIColor *)backgroundColor
                 cornerRadius:(NSNumber *)cornerRadius
{
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.clipsToBounds = YES;
    view.layer.cornerRadius = cornerRadius.floatValue;
    view.backgroundColor = backgroundColor;
    return view;
}

//+ (UIView *)horizontalLineX:(float)x y:(float)y width:(float)width
//{
//    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(x, y - SINGLE_LINE_ADJUST_OFFSET, width, SINGLE_LINE_WIDTH)];
////    line.backgroundColor = UIColorFromRGB(0xd9d9d9);
//    line.backgroundColor = Colors.elColor;
//    
//    return line;
//}

//+ (UIView *)verticalLineX:(float)x y:(float)y height:(float)height
//{
//    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(x - SINGLE_LINE_ADJUST_OFFSET, y, SINGLE_LINE_WIDTH, height)];
//    line.backgroundColor = Colors.elColor;
//    return line;
//}

- (void)removeAllSubViews
{
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}
- (void)transparency:(CGFloat)transparency
{
	self.layer.opacity = transparency;
	if (transparency == 0) {
		self.userInteractionEnabled = NO;
	}else{
		self.userInteractionEnabled = YES;
	}
}

@end
