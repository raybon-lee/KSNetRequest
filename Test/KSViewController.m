//
//  KSViewController.m
//  KSNetRequestDemo
//
//  Created by kong on 15/11/26.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import "KSViewController.h"
#import "KSNetRequest.h"

@interface KSViewController ()

@end

@implementation KSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)action:(id)sender {
    
    [self reloadRequest];
    
}
- (void)reloadRequest
{
    NSMutableDictionary* dic = [NSMutableDictionary new];
    
    [dic setObject:@(0) forKey:@"deviceType"];
    [dic setObject:@"iOS" forKey:@"deviceToken"];
    [dic setObject:@"2.0" forKey:@"appVersion"];
    
    [KSNetRequest requestTarget:self POST:@"http://123.57.176.88:8090/hunparapp/desktop" parameters:dic success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        NSLog(@"KS-[%@:%d]-%@",NSStringFromClass([self class]),__LINE__,responseObject);
    } failure:nil];
}


@end
