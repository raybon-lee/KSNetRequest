//
//  UIViewController+KSNoNetController.m
//  Test
//
//  Created by kong on 15/11/25.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import "UIViewController+KSNoNetController.h"
#import "KSNetRequest.h"
#import "KSNoNetView.h"

@implementation UIViewController (KSNoNetController)

- (void)showNonetWork
{
    KSNoNetView* view = [KSNoNetView instanceNoNetView];
    view.delegate = self;
    [self.view addSubview:view];
}
- (void)hiddenNonetWork
{
    KSNoNetView* view = [KSNoNetView instanceNoNetView];
    [view removeFromSuperview];
}
- (void)reloadNetworkDataSource:(id)sender
{
    [KSNetRequest reloadRequest];
}
@end
