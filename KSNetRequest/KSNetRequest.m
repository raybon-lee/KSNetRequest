//
//  KSNetRequest.m
//  Test
//
//  Created by kong on 15/11/24.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import "KSNetRequest.h"
#import <AFNetworking.h>
#import "UIViewController+KSNoNetController.h"
//请求超时时间
#define TIMEOUTINTERVAL 30

@interface KSNetRequest ()

@property (nonatomic,copy) NSString* URLString;
@property (nonatomic, strong) NSDictionary* parameter;

@end

@implementation KSNetRequest

+ (void)requestTarget:(UIViewController*)target POST:(nonnull NSString*)URLString parameters:(nullable id)parameters success:(requestSuccess)success failure:(requestFailure)failure
{
    if ([self checkNetState]) {
        [target hiddenNonetWork];
        
        [self requestPOST:URLString parameters:parameters success:success failure:failure];
        
    }else{
//        [target showNonetWork];
    
        success?success(nil,nil):nil;
        failure?failure(nil,nil):nil;
    }
    
}

+ (void)requestPOST:(nonnull NSString*)URLString parameters:(nullable id)parameters success:(requestSuccess)success failure:(requestFailure)failure
{
    AFHTTPSessionManager* manager = [self getManager];
    
    [manager POST:URLString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        
        //先判断是否有回调，然后回调
        success?success(task,responseObject):nil;
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        //如果有回调，则返回处理
        failure?failure(task,error):NSLog(@"%@",error);
    }];
}

+ (void)reloadRequest
{
    
}

/**
 *  判断网络状态
 *
 *  @return 返回状态 YES 为有网 NO 为没有网
 */
+ (BOOL)checkNetState
{ 
    return [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus > 0;
}

/**
 *  创建请求者
 *
 *  @return AFHTTPSessionManager
 */
+ (AFHTTPSessionManager*)getManager
{
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    //设置请求超时
    manager.requestSerializer.timeoutInterval = TIMEOUTINTERVAL;
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"html/text",@"text/json",nil];
    return manager;
}
@end
