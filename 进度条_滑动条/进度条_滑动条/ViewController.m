//
//  ViewController.m
//  进度条_滑动条
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slides = slider;

@synthesize progs = prog;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    创建进度条
    prog = [[UIProgressView alloc] init];
    
//    高度无法改变
    prog.frame = CGRectMake(50, 100, 200, 40);
    
//    设置进度条风格颜色 progressTintColor
    prog.progressTintColor = [UIColor blueColor];
    
//    背景色
    prog.trackTintColor = [UIColor redColor];
    
//    设置进度值
//    范围 0 --1
//    最小 0
    prog.progress = 0.5;
    
//    设置进度条风格特征
    prog.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:prog];
    
    
//     创建滑动条
    slider = [[UISlider alloc]init];
    
//    高度不可变
    slider.frame = CGRectMake(50, 200, 200, 100);
    
//    设置滑动条最大值
    slider.maximumValue = 100;
    
//    设置最小值 可以为负值
    slider.minimumValue = -100;
    
//    设置滑块位置
    slider.value = 60;

//左侧背景色
    slider.minimumTrackTintColor = [UIColor blueColor];
    
//    右侧背景色
    slider.maximumTrackTintColor = [UIColor greenColor];
//    滑块颜色
    slider.thumbTintColor = [UIColor orangeColor];
    
//    添加事件
    [slider addTarget:self action:@selector(selector) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:slider];
    
    
}

-(void) selector{
    
    prog.progress = (slider.value - slider.minimumValue) / (slider.maximumValue - slider.minimumValue);
    
    NSLog(@"value = %f",slider.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
