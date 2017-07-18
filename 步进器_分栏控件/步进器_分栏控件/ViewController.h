//
//  ViewController.h
//  步进器_分栏控件
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//    定义步进器对象
//    按照一定的数字。来调整某个数据
    UIStepper * _step;
    
//    分栏器定义
    UISegmentedControl * _seg;
}

@property (retain , nonatomic) UIStepper * step;
@property(retain,nonatomic) UISegmentedControl* seg;

@end

