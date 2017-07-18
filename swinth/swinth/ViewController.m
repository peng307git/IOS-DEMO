//
//  ViewController.m
//  swinth
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mysw = sw;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    sw = [[UISwitch alloc] init];
//    官方控件，宽高不难改变
    sw.frame = CGRectMake(100, 100, 100, 100);
    
//    开关状态设定
    sw.on = YES;
    
//    设置开关状态  可以设置动画效果
    [sw setOn:YES animated:YES];
    
    
    [self.view addSubview:sw];
    
//    设置开启状态的开启颜色
    [sw setOnTintColor:[UIColor redColor]];
    
//设置按钮颜色
    [sw setThumbTintColor:[UIColor greenColor]];
    
//    设置整体风格
    [sw setTintColor:[UIColor purpleColor]];
    
    
//    向开关添加事件函数
//    p3  事件响应类型    UIControlEventValueChanged ： 状态发生变化时促发。
    [sw addTarget:self action:@selector(selector:) forControlEvents:UIControlEventValueChanged];
    
    
    
}

-(void) selector:(UISwitch*) aa{
    if(aa.on == YES ){
        NSLog(@"开关被打开！");
    }
    else{
        NSLog(@"开关被关闭！");
    }
    NSLog(@"开关发生变化！");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
