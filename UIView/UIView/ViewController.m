//
//  ViewController.m
//  UIView
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
    
//    创建uiview对象
//    UIView 是ios的视图对象
//    显示在屏幕上的所有对象的基础类
//    所以显示在屏幕上的对象一定继承于UIView
//    屏幕上看到的所有对象都是uiview的子类
//    是个矩形对象，有背景色，可以显示，有层级关系
    UIView* view = [[UIView alloc ] init];
    
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor redColor];
    
    
//    将新建视图添加到父视图上
//    1:将新建视图显示到屏幕上
//    2：将视图作为父视图的子视图管理起来
    [self.view addSubview:view] ;
    
//    是否显示视图
//    默认 NO 显示
//    YES  不显示
    view.hidden = NO;
    
//    设置视图透明度
//    alpha = 1   不透明
//    alpha = 0 透明
//    view.alpha = 0.5;
    
    self.view.backgroundColor = [UIColor blueColor];
    
//    设置是否显示不透明
    view.opaque = NO;
    
//    将自己从父视图中删除
    [view removeFromSuperview];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
