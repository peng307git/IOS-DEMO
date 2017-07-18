//
//  ViewController.h
//  textfield
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//    文本输入框
//    只能输入单行文字
    UITextField* _text;
}
@property(retain,nonatomic) UITextField * text;

@end

