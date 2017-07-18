//
//  ViewController.m
//  uiscrollview
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    scroll = [[UIScrollView alloc] init];
    scroll.frame = CGRectMake(10,30, 320, 400);
    
    scroll.pagingEnabled = NO;                      //是否按照整页滚动视图
    scroll.scrollEnabled = YES;                     //是否开启滚动／滑动
    scroll.contentSize = CGSizeMake(320, 400*8);    //设置画布大小，可以在画布内显示几张图片,并且可以选择时横向滚动还是纵向滚动
    scroll.bounces = YES;                           //是否有弹动效果
    scroll.alwaysBounceHorizontal = YES;            //开启横向弹动
    scroll.alwaysBounceVertical = YES;              //开启纵向弹动
    scroll.showsHorizontalScrollIndicator = YES;    //是否开启横向滚动条
    scroll.showsVerticalScrollIndicator = YES;      //是否显示纵向滚动条
    scroll.backgroundColor=[UIColor yellowColor];   //画布背景色
    
//    使用循环创建5个图片，并添加到滚动视图中
    for (int i = 0; i < 8 ; i++) {
        NSString* strname = [NSString stringWithFormat:@"20160701-%d.png",i+1];
        UIImage* image = [UIImage imageNamed:strname];
        UIImageView* iview = [[UIImageView alloc]initWithImage:image];
        iview.frame = CGRectMake(0, 400*i, 320, 400);
        [scroll addSubview:iview];
    }
    
    //滚动视图高级属性，及协议函数
    
    
//    是否允许通过添加屏幕让滚动视图响应事件
//    默认为no 不受
   // scroll.userInteractionEnabled = NO;
    
//    滚动视图画布的移动位置，
//    决定画布显示的图像
    scroll.contentOffset = CGPointMake(0,0);
    
//    将当前视图控制器做为代理对象
    scroll.delegate = self;
    
    
    
    [self.view addSubview:scroll];

    
}

//当滚动视图滚动时，只要offset坐标发生变化，会调用此函数
//可以用来监控滚动视图的位置
-(void) scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"y == %f",scroll.contentOffset.y);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
