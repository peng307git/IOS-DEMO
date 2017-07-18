//
//  ViewController.m
//  login
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
    
    _lbname = [[UILabel alloc] init];
    _lbname.frame = CGRectMake(20, 60, 80, 40);
    _lbname.text = @"用户名";
    _lbname.font = [UIFont systemFontOfSize:14];
    _lbname.textAlignment = NSTextAlignmentLeft;
    
    _pass = [[UILabel alloc] init];
    _pass.frame = CGRectMake(20, 140, 80, 40);
    _pass.text = @"密码";
    _pass.font = [UIFont systemFontOfSize:14];
    _pass.textAlignment = NSTextAlignmentLeft;
    
    _textname = [[UITextField alloc] init];
    _textname.frame = CGRectMake(80, 60, 180, 40);
    _textname.placeholder = @"请输入账户。。。";
    _textname.borderStyle = UITextBorderStyleRoundedRect;
    
    _textpass = [[UITextField alloc] init];
    _textpass.frame = CGRectMake(80, 140, 180, 40);
    _textpass.placeholder = @"请输入密码。。。";
    _textpass.borderStyle = UITextBorderStyleRoundedRect;
    _textpass.keyboardType = UIKeyboardTypeNumberPad;
    _textpass.secureTextEntry = YES;
    
    _loginbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _loginbtn.frame = CGRectMake(120, 300, 80, 40);
    [_loginbtn setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginbtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    _reslebtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _reslebtn.frame = CGRectMake(120, 360, 80, 40);
    [_reslebtn setTitle:@"注册" forState:UIControlStateNormal];
    [_reslebtn addTarget:self action:@selector(resle) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbname];
    [self.view addSubview:_pass];
    [self.view addSubview:_textname];
    [self.view addSubview:_textpass];
    [self.view addSubview:_loginbtn];
    [self.view addSubview:_reslebtn];
}

-(void)login{
    
    NSString* strName = @"joel";
    NSString* strPass = @"999";
    
//     获取输入框的用户名
    NSString* strTextName = _textname.text;
    NSString* strTextPass = _textpass.text;
    
    if( [strName isEqualToString:strName] && [strPass isEqualToString:strTextPass] ){
        NSLog(@"登陆成功");
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"提示" message:@"登陆成功！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"提示" message:@"用户名或密码错误！！❌" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    
}

-(void)resle{
    NSLog(@"注册");
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_textname resignFirstResponder];
    [_textpass resignFirstResponder];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
