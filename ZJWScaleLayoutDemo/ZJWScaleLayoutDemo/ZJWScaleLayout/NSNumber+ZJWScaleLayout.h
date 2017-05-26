//
//  NSNumber+ZJWScaleLayout.h
//  ZJWScaleLayoutDemo
//
//  Created by zjw on 2017/5/26.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ZJW_IS_IPHONE5_SCREEN  (ZJW_CURRENT_SCREEN_WIDTH == ZJWiPhone5ScreenWidth)  // 判断是否是 iPhone5  屏幕
#define ZJW_IS_IPHONE6_SCREEN  (ZJW_CURRENT_SCREEN_WIDTH == ZJWiPhone6ScreenWidth)  // 判断是否是 iPhone6  屏幕
#define ZJW_IS_IPHONE6P_SCREEN (ZJW_CURRENT_SCREEN_WIDTH == ZJWiPhone6PScreenWidth) // 判断是否是 iPhone6P 屏幕

#define ZJW_CURRENT_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width  // 当前屏幕宽度
#define ZJW_CURRENT_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height // 当前屏幕高度

static const CGFloat ZJWiPhone5ScreenWidth   = 320.0; // iPhone5  屏幕宽度
static const CGFloat ZJWiPhone5ScreenHeight  = 568.0; // iPhone5  屏幕高度
static const CGFloat ZJWiPhone6ScreenWidth   = 375.0; // iPhone6  屏幕宽度
static const CGFloat ZJWiPhone6ScreenHeight  = 667.0; // iPhone6  屏幕高度
static const CGFloat ZJWiPhone6PScreenWidth  = 414.0; // iPhone6P 屏幕宽度
static const CGFloat ZJWiPhone6PScreenHeight = 736.0; // iPhone6P 屏幕高度

@interface NSNumber (ZJWScaleLayout)

/** 比例布局值 */
- (CGFloat)zjw_scaleLayoutValue;

@end
