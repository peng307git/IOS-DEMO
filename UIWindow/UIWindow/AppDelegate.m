//
//  AppDelegate.m
//  UIWindow
//
//  Created by 彭玉成 on 2017/7/14.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//当程序框架初始化成功后调用
//调用此函数
//此函数用来初始化整个程序框架结构
//整个程序对iOS开发者对入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    创建UIWindow对象
//    整个程序中只有一个UIwindow对象
//    在程序里表示屏幕窗口
//    UIWindow 也是基于UIView
//    UIWindow 是一个特殊的UIView
//    UIScreen表示屏幕硬件表示 类
//    mainScreen 获得主屏幕设备信息，当前手机屏幕的大小尺寸
//    bounds 表示屏幕宽高值
    self.window = [ [UIWindow alloc] initWithFrame:[ UIScreen mainScreen ].bounds  ];
    
    
    
    
//    创建个视图控制器
    self.window.rootViewController = [[UIViewController alloc] init];
    
    self.window.backgroundColor = [UIColor orangeColor];
    
    [self.window makeKeyAndVisible];
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake( 0, 0, 100, 100)];
    
    view.backgroundColor = [UIColor blueColor];
    
    UIView * viewf = [[UIView alloc] initWithFrame:CGRectMake(50, 200, 300, 300)];
    viewf.backgroundColor = [UIColor redColor];
    
    [viewf addSubview:view];
    
    [self.window addSubview:viewf];
    
    NSLog(@"@%",self.window);
    NSLog(@"@%",viewf.window);
    NSLog(@"@%",view.window);
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
