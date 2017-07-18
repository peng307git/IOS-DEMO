//
//  VCRoot.h
//  XIB_控件
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController

//属性同步
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *userPass;

@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textPass;

@property (weak, nonatomic) IBOutlet UIButton *login;
@property (weak, nonatomic) IBOutlet UIButton *reset;

//事件函数同步
- (IBAction)LOGIN:(id)sender;
- (IBAction)RESET:(id)sender;


@end
