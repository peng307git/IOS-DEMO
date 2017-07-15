//
//  ViewController.h
//  定时器_视图移动
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
// 定义一个定时器对象
    NSTimer * timerView;
}

//定时器属性对象  公有的，对外使用也可以
@property (retain , nonatomic) NSTimer * timer;

@end

