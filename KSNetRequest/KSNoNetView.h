//
//  KSNoNetView.h
//  Test
//
//  Created by kong on 15/11/25.
//  Copyright © 2015年 xianhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KSNoNetViewDelegate  <NSObject>

- (void)reloadNetworkDataSource:(id)sender;

@end

@interface KSNoNetView : UIView

@property (nonatomic, strong) id<KSNoNetViewDelegate>delegate;

+ (instancetype) instanceNoNetView;

- (IBAction)reloadNetworkDataSource:(id)sender;

@end
