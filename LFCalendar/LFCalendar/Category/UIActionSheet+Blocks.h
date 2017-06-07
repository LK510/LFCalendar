//
//  UIActionSheet+Blocks.h
//  Sellermajunliang
//
//  Created by majunliang on 14/12/10.
//  Copyright (c) 2014年 majunliang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SheetCompletionBlock)(NSInteger buttonIndex);
typedef void (^SheetCancelBlock)();

@interface UIActionSheet (Blocks) <UIActionSheetDelegate>

+ (UIActionSheet *)showDPActionSheetWithTitle:(NSString *)title
                                       inView:(UIView *)inView
                            cancelButtonTitle:(NSString *)cancelButtonTitle
                            otherButtonTitles:(NSArray *)otherButtons
                                 onCompletion:(SheetCompletionBlock)completioned
                                     onCancel:(SheetCancelBlock)cancelled;

@end
