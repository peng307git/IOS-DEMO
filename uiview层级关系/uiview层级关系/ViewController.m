//
//  ViewController.m
//  uiview层级关系
//
//  Created by 彭玉成 on 2017/7/14.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(100, 100, 100, 100);
    view1.backgroundColor = [UIColor blueColor];
    
    UIView* view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(130, 130, 100, 100);
    view2.backgroundColor = [UIColor orangeColor];
    
    UIView* view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(160, 160, 100, 100);
    view3.backgroundColor = [UIColor greenColor];
    
    
//    哪个视图先被添加，就行绘制哪个视图
//    最后绘制的视图，层级最高
     [self.view addSubview:view1];
     [self.view addSubview:view2];
     [self.view addSubview:view3];
    
//    将某一个视图调整到最前面
//    参数：view 对象，哪个视图
  // [self.view bringSubviewToFront:view3];
//
////    将某个视图调整到最后
 //  [self.view sendSubviewToBack:view1];
    
    
//    ??????
    UIView * aaa = self.view.subviews[2];
    UIView * bbb = self.view.subviews[0];
    
    if (bbb == view1) {
        NSLog(@"想带了1");
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
