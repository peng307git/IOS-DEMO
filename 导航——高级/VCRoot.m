//
//  VCRoot.m
//  导航——高级
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "VCRoot.h"
#import "VCSec.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    设置导航栏透明度
//    no  不透明
    self.navigationController.navigationBar.translucent = NO;
    
//    导航栏风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"根视图";
    
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(nexts)];
    
    self.navigationItem.rightBarButtonItem = next;
    
    
}

-(void) nexts{
    
//    创建新的视图控制器
    VCSec * vcs = [[VCSec alloc] init];
    
//    使用当前视图控制器的导航控制器对象
//    pushViewController：ID 推出视图控制器ID
    [self.navigationController pushViewController:vcs animated:YES];
    
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
