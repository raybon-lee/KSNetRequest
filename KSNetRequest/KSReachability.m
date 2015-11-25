//
//  KSReachability.m
//  Test
//
//  Created by kong on 15/11/24.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import "KSReachability.h"
#import <AFNetworkReachabilityManager.h>

@implementation KSReachability

/**
 *  项目初始化时候检测网络状态
 */
+ (void)load
{
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

@end
