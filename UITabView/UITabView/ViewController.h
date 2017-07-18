//
//  ViewController.h
//  UITabView
//
//  Created by 彭玉成 on 2017/7/17.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//    实现数据视图的普通协议
//      数据视图的普通事件处理
    UITableViewDelegate,

//数据视图代理协议
//处理数据视图的数据代理
    UITableViewDataSource
>
{
//    定义数据视图
//    数据视图用来显示大量相同格式信息的视图
    UITableView * _tab;
}

@end

