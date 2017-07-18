//
//  ViewController.m
//  定时器_视图移动
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量同步
@synthesize timer = timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@" 开始" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pres) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(100, 200, 80, 40);
    [btn1 setTitle:@" 停止" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(presstop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIView * view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    view.tag = 110;
}

-(void) pres{
//    NSTimer类方法创建定时器，并启动
//    p1 ：每隔多久调用 秒为单位。
//    p2: 表示实现这个函数的对象。
//    p3: 定时器函数对象
//    p4：可以传入定时器函数中一个参数，么有可以传nil
//    p5： 定时器是否重复操作
//    返回值是新建好的定时器对象
    timerView = [  NSTimer
        scheduledTimerWithTimeInterval:1
        target:self
        selector:@selector(timestamp:)
        userInfo:@"xxx"
        repeats:YES
     ];
}

-(void) timestamp:(NSTimer*) ttt{
    NSLog(@"qqq === %@",ttt.userInfo);
    UIView* view = [self.view viewWithTag:110];
    view.frame = CGRectMake(view.frame.origin.x+5, view.frame.origin.y+5, 80, 80);
}

-(void) presstop{
    if(timerView != nil){
//        停止定时器
        [timerView invalidate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
