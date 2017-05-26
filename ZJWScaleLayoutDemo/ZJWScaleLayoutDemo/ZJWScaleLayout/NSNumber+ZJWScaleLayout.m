//
//  NSNumber+ZJWScaleLayout.m
//  ZJWScaleLayoutDemo
//
//  Created by zjw on 2017/5/26.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "NSNumber+ZJWScaleLayout.h"

@implementation NSNumber (ZJWScaleLayout)

/** 设计图屏幕宽度 */
static const CGFloat ZJWDesignScreenWidth = ZJWiPhone6ScreenWidth;

/** 比例布局值 */
- (CGFloat)zjw_scaleLayoutValue {
    return [self doubleValue] * ZJW_CURRENT_SCREEN_WIDTH / ZJWDesignScreenWidth;
}

@end
