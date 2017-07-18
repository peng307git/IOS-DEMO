//
//  VCRoot.m
//  导航——基础
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
//    设置导航栏标题
    self.title = @"根视图";
    
//    设置导航元素项目的标题
    self.navigationItem.title = @"根视图2";
    
//    创建导航栏左侧按钮
//    根据title文字创建按钮
//    p2: 按钮风格
    UIBarButtonItem * leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧<<" style:UIBarButtonItemStyleDone target:self action:@selector(press)];
    
//    将导航元素相待左侧按钮赋值
    self.navigationItem.leftBarButtonItem =leftBtn;
    
    //    根据系统风格创建按钮,只能指定风格。 按钮内容或文字不能改变
    UIBarButtonItem * rightBtn =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(rightprs)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
}
-(void) press{
    NSLog(@"左侧按钮被按下");
}

-(void) rightprs{
    NSLog(@"右侧按钮被按下");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
