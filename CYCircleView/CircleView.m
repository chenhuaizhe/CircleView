//
//  CircleView.m
//  CYCircleView
//
//  Created by CY on 2016/10/9.
//  Copyright © 2016年 zeroner. All rights reserved.
//

#import "CircleView.h"
#import "CircleView+Configuration.h"

@implementation CircleView

//初始化
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self initSubView];
    }
    return self;
}

- (void)initSubView {
    self.backgroundColor = [CircleView backgroundColor];
    [self drawCircle];
    [self drawColorLayer];
    
}


//画一个圆
- (void)drawCircle {
    //创建一个layer并添加到self.layer上面去
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = self.bounds;
    [self.layer addSublayer:layer];
    //创建一个圆
    CGFloat width = CGRectGetWidth(self.bounds);
    CGFloat height = CGRectGetHeight(self.bounds);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2, height/2) radius:80 startAngle:0 endAngle:2* M_PI clockwise:YES];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [CircleView insideCircleColor].CGColor;
    layer.lineWidth = 10;
    layer.lineCap = kCALineCapRound;
}

//设置整个view渐变色
- (void)drawColorLayer {
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = self.bounds;
    [self.layer addSublayer:layer];
    
    CGFloat width = CGRectGetWidth(self.bounds);
    CGFloat height = CGRectGetHeight(self.bounds);
    CAGradientLayer *leftLayer = [CAGradientLayer layer];
    leftLayer.frame = CGRectMake(0, 0, width/2, height);
    leftLayer.locations = [CircleView locations];
    leftLayer.colors = [CircleView colors];
    [layer addSublayer:leftLayer];
    
    CAGradientLayer *rightLayer = [CAGradientLayer layer];
    rightLayer.frame = CGRectMake(width/2, 0, width/2, height);
    rightLayer.locations = [CircleView locations];
    rightLayer.colors = [CircleView colors];
    [layer addSublayer:rightLayer];
    
    CAShapeLayer *maskLayer = [self buildMaskLayer];
    layer.mask = maskLayer;
}

// 创建一个渐变色的环形的遮罩
- (CAShapeLayer *)buildMaskLayer {
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = self.bounds;
    layer.lineWidth = [CircleView lineWidth];
    CGFloat width = CGRectGetWidth(self.bounds);
    CGFloat height = CGRectGetHeight(self.bounds);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2, height/2) radius:80 startAngle:[CircleView startAngle] endAngle:[CircleView endAngle] clockwise:YES];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor blackColor].CGColor;
    layer.lineCap = kCALineCapRound;
    return layer;
}
@end
