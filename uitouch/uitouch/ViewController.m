//
//  ViewController.m
//  uitouch
//
//  Created by 彭玉成 on 2017/7/16.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage * images = [UIImage imageNamed:@"ad1.jpg"];
    
    UIImageView * iview = [[UIImageView alloc]init];
    
    iview.image = images;
    
    iview.frame = CGRectMake(30, 30, 200, 200);
    iview.tag = 110;
    
    [self.view addSubview:iview];
}


//一次点击的过程 三种状态
//  1 -- 手指触碰屏幕    touchesBegan
//  2 -- 手指按在屏幕时，包括按住并且移动手指  touchesMoved
//  3 -- 手指离开屏幕瞬间
//  touchesBegan 在状态一被触发 //点击屏幕开始的瞬间调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    获取点击对象。anyObject是任何一个点击对象
//    一般只有一个对象，获得的对象就是我们点击的对象
    UITouch * touch = [touches anyObject];
    
//    tapCount 记录当前点击的次数
    if (touch.tapCount == 1) {
        NSLog(@"单次点击");
    }
    if (touch.tapCount == 2) {
        NSLog(@"双次点击");
    }
    ptt = [touch locationInView:self.view];
    
    NSLog(@"手指触碰瞬间");
}

//touchesMoved  状态二被调用
-(void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch * touch = [touches anyObject];
    
//    获得当前手指在屏幕上的相对坐标
//    相对于当前视图的坐标
    CGPoint pt = [touch locationInView:self.view];
    
//    每次移动的偏移量
    float xOff = pt.x - ptt.x;
    float yOff = pt.y - ptt.y;
    
    UIImageView * ive = (UIImageView*)[self.view viewWithTag:110];
    
    ptt = pt
    ;
    
    ive.frame = CGRectMake(ive.frame.origin.x + xOff,
                           ive.frame.origin.y+yOff,
                           ive.frame.size.width,
                           ive.frame.size.height);

    NSLog(@"x = %f,y=%f",pt.x,pt.y);
    
//    NSLog(@"手指触碰移动时");
}

//touchesEnded  状态三被调用
-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"手指离开屏幕了");
}

//特色情况中断触屏事件时调用
//来电话，等紧急信息时。 取消当前点击时调用
-(void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"特殊事件");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
