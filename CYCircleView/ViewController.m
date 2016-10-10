//
//  ViewController.m
//  CYCircleView
//
//  Created by CY on 2016/10/9.
//  Copyright © 2016年 zeroner. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CircleView *cView = [[CircleView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:cView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
