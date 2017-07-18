//
//  ViewController.m
//  textfield
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize text = _text;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.f
    
    self.text = [[UITextField alloc]init];
    
    self.text.frame = CGRectMake(100, 100, 200, 30);
    
//    设置内容文字
//    self.text.text = @"用户名";
    
    self.text.font = [UIFont systemFontOfSize:15];
    
    self.text.textColor = [UIColor blueColor];
    
     #define NUMBERS @"0123456789n";
    
//    设置边框风格
//UITextBorderStyleRoundedRect 默认
//
//
//    
    self.text.borderStyle = UITextBorderStyleRoundedRect;
    
//    设置虚拟键盘风格
//    UIKeyboardTypeDefault  默认
//    UIKeyboardTypeNamePhonePad 字母和数字风格
//    UIKeyboardTypeNumberPad数字风格
    self.text.keyboardType = UIKeyboardTypeDefault;
    
//    提示信息
    self.text.placeholder = @"请输入。。。。。";
    
//    是否做为输入密码
//    YES 做为密码  圆点效果；
    self.text.secureTextEntry = NO;
    
    
    
    
    
    
    [self.view addSubview:self.text];
}

//有几种协议函数
//  开始编辑时触发
//  编辑输入结束促发
//是否可以进行输入
//是否可以结束输入

//点击屏幕空白处促发
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//
//    收回虚拟键盘
    [self.text resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
