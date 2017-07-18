//
//  VCRoot.h
//  XIB
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *userpass;
@property (weak, nonatomic) IBOutlet UITextField *textname;
@property (weak, nonatomic) IBOutlet UITextField *textpass;
@property (weak, nonatomic) IBOutlet UIButton *login;
@property (weak, nonatomic) IBOutlet UIButton *reset;
- (IBAction)islogin:(id)sender;
- (IBAction)isreset:(id)sender;

@end
