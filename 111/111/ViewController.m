//
//  ViewController.m
//  111
//
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
    for (int i=0; i<2; i++) {
        
        UIButton *btn = [UIButton  buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(100, 100+100*i, 80, 40);
        
        if(i ==0){
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
            
        }
        if(i == 1){
            [btn setTitle:@"等待指示器"  forState:UIControlStateNormal];
        }
        btn.tag = 101+i;
        [btn addTarget:self action:@selector(se) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

-(void)se{
    NSLog(@"111");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
