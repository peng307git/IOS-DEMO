//
//  ViewController.m
//  jinggao
//  警告对话框   等待提示框
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for(int i=0;i<2;i++){
        UIButton * btn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        if(i==0){
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }
        else if(i==1){
            [btn setTitle:@"等待指示器" forState:UIControlStateNormal];
        }
        
        btn.tag = 101+i;
        
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    }
    
    
}

-(void)pressBtn:(UIButton *)btn{
    if(btn.tag == 101){
        UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"标题"
                                                            message:@"这个是警告对话框的默认样式"
                                                           delegate:self
                                                  cancelButtonTitle:@"取消"
                                                  otherButtonTitles:@"好的", nil];
        [alertview show];
    }
    if(btn.tag == 102){
        
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
