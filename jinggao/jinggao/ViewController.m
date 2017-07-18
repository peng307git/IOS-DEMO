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
@synthesize _aaa =aaa;
@synthesize _bbb = bbb;

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


//点击按钮的时候想捕获的话需要添加代理协议 UIAlertViewDelegate
//p1    警告框标题
//p2    主体信息
//p3    处理按钮事件的代理对象
//p4    取消按钮的文字
//p5    其它按钮的文字
//p6    碰到他 表示按钮添加结束
-(void)pressBtn:(UIButton *)btn{
    if(btn.tag == 101){
        aaa = [[UIAlertView alloc] initWithTitle:@"标题"
                                  message:@"这个是警告对话框的默认样式"
                                  delegate:self
                                  cancelButtonTitle:@"取消"
                                  otherButtonTitles:@"好的", nil];
        [aaa show];
    }
    if(btn.tag == 102){
//        宽高无法改变
        bbb = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 300, 200, 200)];
//        设定提示的风格  灰 小白  大白  UIActivityIndicatorViewStyleGray
        bbb.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
        
//        启动动画并显示
        [bbb startAnimating];
        
//        停止等待动画并隐藏
//        [bbb stopAnimating];
        
        [self.view addSubview:bbb];
        self.view.backgroundColor = [UIColor blueColor];
    }
}

//当点击对话框的按钮时，调用此函数
-(void) _aaa:(UIAlertView *)_aaa clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"INDEX = %ld\n",buttonIndex);
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
