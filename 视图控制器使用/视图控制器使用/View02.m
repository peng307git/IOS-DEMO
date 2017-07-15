//
//  View02.m
//  视图控制器使用
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "View02.h"

@interface View02 ()

@end

@implementation View02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
}

// 点击视图控制器2界面屏幕时
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    使当前的视图控制器消失
//    p1；是否有动画效果
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
