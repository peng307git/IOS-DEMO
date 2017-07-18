//
//  ViewController.h
//  警告对话框_等待提示
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>{
    
    //定义一个警告对话框视图对象
    UIAlertView * _alertView;
    
    //等待提示对象
    //当下载，或者加载比较大的文件时，可以显示此控件，处于提示等待状态
    UIActivityIndicatorView * _activityIndicator;
}

@property(retain,nonatomic) UIAlertView * alertView;
@property(retain,nonatomic) UIActivityIndicatorView * activityIndicator;

@end

