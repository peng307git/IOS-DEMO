//
//  ViewController.m
//  UITabView
//
//  Created by 彭玉成 on 2017/7/17.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    创建数据视图
//   p1 数据视图的位置
//    p2 数据视图的风格
    _tab = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    _tab.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
