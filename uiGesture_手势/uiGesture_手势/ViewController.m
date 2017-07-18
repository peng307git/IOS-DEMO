//
//  ViewController.m
//  uiGesture_手势
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage* img = [UIImage imageNamed:@"ad1.jpg"];
    
    imgview = [[UIImageView alloc] init];
    
    imgview.image = img;
    
    imgview.frame = CGRectMake(30, 100, 200, 200);
    
    
    
    
//    开启交互事件响应 默认值为no
    imgview.userInteractionEnabled = YES;
    
//    创建点击手势对象   UITapGestureRecognizer 点击手势类
//    识别点击手势事件
    UITapGestureRecognizer * Tap_1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tag_1:)];
    
//    表示手势识别事件的事件类型， 几次点击时触发
//    默认值为 1
    Tap_1.numberOfTapsRequired =1 ;
    
//    表示几个手指点击时触发 默认 1
    Tap_1.numberOfTouchesRequired =1;
    
//    将点击事件添加到视图中， 视图可以响应事件
    [imgview addGestureRecognizer:Tap_1];
    
    
//    双击事件
    UITapGestureRecognizer *Tap_2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tag_2:)];
     Tap_2.numberOfTapsRequired = 2 ;
     Tap_2.numberOfTouchesRequired = 1;
     [imgview addGestureRecognizer:Tap_2];
    
//    当单击操作遇到双击操作，单击操作无效
    [Tap_1 requireGestureRecognizerToFail:Tap_2];
    
    
}

-(void) tag_1:( UITapGestureRecognizer*) tag{
    NSLog(@"单击操作！");
    
//    获取手势监控的视图对象
    UIImageView * img = (UIImageView*) tag.view;
    
//    开启动画
    [UIView beginAnimations:nil context:nil];
    
//    动画速度
    [UIView setAnimationDuration:2];
    
//    最终效果
    img.frame = CGRectMake(0, 0, 320, 568);
    
//    停止动画
    [UIView commitAnimations];
    
}

-(void) tag_2:(UITapGestureRecognizer*) tag{
    NSLog(@"双次点击");
    //    获取手势监控的视图对象
    UIImageView * img = (UIImageView*) tag.view;
    
    //    开启动画
    [UIView beginAnimations:nil context:nil];
    
    //    动画速度
    [UIView setAnimationDuration:2];
    
    //    最终效果
    img.frame = CGRectMake(30, 100, 200, 200);
    
    //    停止动画
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
