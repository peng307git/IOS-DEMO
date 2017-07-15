//
//  ViewController.m
//  视图控制器使用
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"
#import "View02.h"
@interface ViewController ()

@end

@implementation ViewController


//当屏幕被点击时调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    创建视图控制器2
    View02* vc = [[View02 alloc] init];
    
//    显示一个新的视图控制器界面道屏幕上
//    P1 : 新的视图控制器对象
//    P2 ;使用动画切换。
//    p3 : 切换结束后功能调用，一般传nil 空。
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad!第一次加载！");
}

//当视图控制器即将显示时调用此函数
//视图状态 1: 显示前（不现实）  2:正在显示   3:已经被隐藏
//参数：表示是否用动画切换后显示
-(void) viewWillAppear:(BOOL)animated{
    NSLog(@"viewWillAppear,视图即将显示！");
}

//当视图控制器即将消失时调用此函数
//参数：表示是否用动画切换后消失
//当前状态：视图还在屏幕上
-(void) viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear,视图即将消失！");
}

//当视图控制器已经显示到屏幕时调用此函数
//参数：表示是否用动画切换显示的
//当前状态：视图已经在屏幕上了
-(void) viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear,视图已在这里！");
}

//当视图控制器已经消失时调用此函数
//参数：表示是否用动画切换显示的
//当前状态：视图已经从屏幕上消失了
-(void) viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidAppear,视图已消失了！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
