//
//  ViewController.m
//  ZJWScaleLayoutDemo
//
//  Created by zjw on 2017/5/26.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "ViewController.h"
#import "NSNumber+ZJWScaleLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 判断当前屏幕是哪种类型
    if (ZJW_IS_IPHONE5_SCREEN) {
        NSLog(@"是iPhone5屏幕");
    }
    else if (ZJW_IS_IPHONE6_SCREEN) {
        NSLog(@"是iPhone6屏幕");
    }
    else if (ZJW_IS_IPHONE6P_SCREEN) {
        NSLog(@"是iPhone6P屏幕");
    }
    
    // 获取当前屏幕宽度和高度
    NSLog(@"当前屏幕宽度:%@ 高度:%@", @(ZJW_CURRENT_SCREEN_WIDTH), @(ZJW_CURRENT_SCREEN_HEIGHT));
    
    // 未按比例布局与按比例布局比较
    CGFloat blueViewX = ZJWiPhone6ScreenWidth / 2;
    CGFloat blueViewY = ZJWiPhone6ScreenHeight / 2;
    CGFloat blueViewWidth = ZJWiPhone6ScreenWidth / 2;
    CGFloat blueViewHeight = ZJWiPhone6ScreenHeight / 2;
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(blueViewX, blueViewY, blueViewWidth, blueViewHeight)];
    blueView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    [self.view addSubview:blueView];
    NSLog(@"未按比例布局frame:%@", NSStringFromCGRect(blueView.frame));
    
    CGFloat redViewX = [@(blueViewX) zjw_scaleLayoutValue];
    CGFloat redViewY = [@(blueViewY) zjw_scaleLayoutValue];
    CGFloat redViewWidth = [@(blueViewWidth) zjw_scaleLayoutValue];
    CGFloat redViewHeight = [@(blueViewHeight) zjw_scaleLayoutValue];
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(redViewX, redViewY, redViewWidth, redViewHeight)];
    redView.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.5];
    [self.view addSubview:redView];
    NSLog(@"按比例布局frame:%@", NSStringFromCGRect(redView.frame));
}

@end
