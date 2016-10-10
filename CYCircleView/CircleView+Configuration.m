//
//  CircleView+Configuration.m
//  CYCircleView
//
//  Created by CY on 2016/10/10.
//  Copyright © 2016年 zeroner. All rights reserved.
//

#import "CircleView+Configuration.h"
#define DEGREES_TO_RADOANS(x) (M_PI * (x) / 180.0) // 将角度转为弧度

@implementation CircleView (Configuration)    
    
+ (UIColor *)backgroundColor {
    
    return [UIColor clearColor];
}

+ (UIColor *)insideCircleColor {
    return [UIColor greenColor];
}

+ (CGFloat)lineWidth {
    return 20;
}

+ (CGFloat)startAngle {
    
    return DEGREES_TO_RADOANS(-60);
}

+ (CGFloat)endAngle {
    
    return DEGREES_TO_RADOANS(220);
}


+ (CGFloat)cicleRadius{
    return 80;
}

+ (NSArray *)colors {
    return @[(id)[UIColor whiteColor].CGColor,(id)[UIColor yellowColor].CGColor];
}

+ (NSArray *)locations {
    return @[@0.1,@0.5,@0.8];
}
@end
