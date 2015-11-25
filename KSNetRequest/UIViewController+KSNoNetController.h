//
//  UIViewController+KSNoNetController.h
//  Test
//
//  Created by kong on 15/11/25.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSNoNetView.h"


@interface UIViewController (KSNoNetController)<KSNoNetViewDelegate>

/**
 *  显示没有网络
 */
- (void)showNonetWork;

/**
 *  隐藏没有网络
 */
- (void)hiddenNonetWork;

@end
