//
//  ViewController.m
//  程序间通讯
//
//  Created by 安宁 on 15/11/15.
//  Copyright © 2015年 安宁. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"程序间通讯";
    
#ifdef __IPHONE_9_1
    
    NSLog(@"__IPHONE_9_0");
    
#endif
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //跳转到开发者app
//    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"wxa84de0a5f585327a://key1=1?key2=2"]];
    
    //跳转到系统设置
    [self showLocationAlert];
    
    
}
- (void) showLocationAlert {
    
    if ([[[UIDevice currentDevice] systemVersion]floatValue] >= 5.1)
    {
     
        if ([[[UIDevice currentDevice] systemVersion]floatValue] >= 8.0) //ios 8.0 以后
        {
            NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            if ([[UIApplication sharedApplication] canOpenURL:url])
            {
                [[UIApplication sharedApplication] openURL:url];
            }

        }
        
    }else //ios 5.1 以前
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=LOCATION_SERVICES"]];

    }
}





@end
