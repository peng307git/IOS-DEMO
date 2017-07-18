//
//  ViewController.h
//  进度条_滑动条
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//    进度条
    UIProgressView * prog;
    
//    滑动条
    UISlider * slider;
}
@property (retain ,nonatomic) UIProgressView * progs;

@property (retain , nonatomic) UISlider * slides;

@end

