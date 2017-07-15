//
//  main.m
//  UIViewControll
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


//整个app程序的如何函数，主函数；
int main(int argc, char * argv[]) {
    
//    自动内存释放池
    @autoreleasepool {
        
//            UIKit框架结构的启动函数
//        参数一：argc  -- 启动时带有参数个数
//        参数二；argv  -- 参数列表
//        参数三：nil   -- 要求传入的主框架类名，如果参数为nil，系统会自动用默认的框架类作为主框架类名
//        参数四：主框架的代理类对象名
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    
    }
    
}
