//
//  ViewController.m
//  步进器_分栏控件
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize step = _step;
@synthesize seg = _seg;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    创建步进器对象
    _step = [[UIStepper alloc]init];
    
//    宽高无法改变
    _step.frame = CGRectMake(100, 100, 80, 80);
    
//    最小值,最大值，默认值
    _step.minimumValue = 0;
    _step.maximumValue =10;
    _step.value = 6;
    
//    设置步进值
    _step.stepValue = 1;
    
//    是否可以重复响应事件操作
    _step.autorepeat = YES;
    
//    是否将步进结果通过事件函数响应出来
    _step.continuous = YES;
    
    [_step addTarget:self action:@selector(selector) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_step];
    
    
//    创建分栏控件
    _seg = [[UISegmentedControl alloc]init];
    
//
    _seg.frame = CGRectMake(10, 200, 300, 30);
    
//    添加按钮元素
//    P1: 按钮文字
//    p2: 按钮索引位置
//    p3: 是否插入动画效果
    [_seg insertSegmentWithTitle:@"666" atIndex:0 animated:NO];
    
    [_seg insertSegmentWithTitle:@"888" atIndex:1 animated:NO];
    
    [_seg insertSegmentWithTitle:@"999" atIndex:2 animated:NO];
    
//    设置默认索引位置
    _seg.selectedSegmentIndex = 1;
    
    [_seg addTarget:self action:@selector(selector) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_seg];
    
    
}

- (void ) selector{
    NSLog(@"log == %i",_seg.selectedSegmentIndex);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
