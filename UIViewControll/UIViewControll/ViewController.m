//
//  ViewController.m
//  UIViewControll
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//布局初始化视图函数
//当视图控制器第一次被加载显示视图时调用此函数
- (void)viewDidLoad {
    
//    调用夫类的加载视图函数
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//当系统内存过低时，会发起警告信息，调用此函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"内存过低！");
    // Dispose of any resources that can be recreated.
}


@end
