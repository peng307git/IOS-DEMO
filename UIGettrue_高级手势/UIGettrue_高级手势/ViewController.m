//
//  ViewController.m
//  UIGettrue_高级手势
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
    
    UIImageView * imgview = [UIImage imageNamed:@"ad1.jpg"];
    
    imgview = [[UIImageView alloc] init];
    
    imgview.image = img;
    
    imgview.frame = CGRectMake(30, 100, 200, 200);
    
    [self.view addSubview:imgview];
    //开启交互事件响应 默认值为no
    imgview.userInteractionEnabled = YES;
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
