//
//  ViewController.h
//  jinggao
//
//  Created by 彭玉成 on 2017/7/15.
//  Copyright © 2017年 joel_1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    UIAlertView * aaa;
    UIActivityIndicatorView * bbb;
}
@property (retain , nonatomic)UIAlertView* _aaa;
@property (retain , nonatomic)UIActivityIndicatorView* _bbb;

@end

