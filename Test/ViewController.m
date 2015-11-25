//
//  ViewController.m
//  Test
//
//  Created by kong on 15/11/24.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import "ViewController.h"
#import "KSNetRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)sender:(id)sender {
    
    NSMutableDictionary* dic = [NSMutableDictionary new];
    
    [dic setObject:@(0) forKey:@"deviceType"];
    [dic setObject:@"iOS" forKey:@"deviceToken"];
    [dic setObject:@"2.0" forKey:@"appVersion"];
    
    [KSNetRequest requestTarget:self POST:@"http://123.57.176.88:8090/hunparapp/desktop" parameters:dic success:^(NSURLSessionDataTask * _Nullable task, id  _Nullable responseObject) {
        NSLog(@"KS-[%@:%d]-%@",NSStringFromClass([self class]),__LINE__,responseObject);
    } failure:nil];
    
}


@end
