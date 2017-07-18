//
//  VCThird.m
//  导航——高级
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title=@"第三级";
    
    
    UIBarButtonItem * btnleft = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(nexts)];
    
//    自己设定左侧按钮时  返回按钮会被左侧按钮替代
    self.navigationItem.leftBarButtonItem = btnleft;
    
    UIBarButtonItem * btnright = [[UIBarButtonItem alloc] initWithTitle:@"返回根视图" style:UIBarButtonItemStylePlain target:self action:@selector(geng)];
    self.navigationItem.rightBarButtonItem = btnright;
}


-(void) nexts{
//    将当前的视图控制器弹出，并返回到上一级界面
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"返回上一级");
    
}
-(void) geng{
    //    将当前的视图控制器弹出，并返回到上一级界面
    [self.navigationController popToRootViewControllerAnimated:YES];
    NSLog(@"返回上一级");
    
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
