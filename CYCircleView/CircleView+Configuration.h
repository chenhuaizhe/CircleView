//
//  CircleView+Configuration.h
//  CYCircleView
//
//  Created by CY on 2016/10/10.
//  Copyright © 2016年 zeroner. All rights reserved.
//

#import "CircleView.h"

@interface CircleView (Configuration)
// 背景色
+ (UIColor *)backgroundColor;

//内层圆的颜色

+ (UIColor *)insideCircleColor;


// 线宽
+ (CGFloat)lineWidth;

// 起始角度（根据顺时针计算，逆时针则是结束角度）
+ (CGFloat)startAngle;

// 结束角度（根据顺时针计算，逆时针则是起始角度）
+ (CGFloat)endAngle;

//圆圈半径
+ (CGFloat)cicleRadius;

//渐变色数组
+ (NSArray *)colors;

//渐变色位置
+ (NSArray *)locations;

@end
