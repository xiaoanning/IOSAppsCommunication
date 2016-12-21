//
//  ViewController.m
//  辅助项目
//
//  Created by 安宁 on 15/11/15.
//  Copyright © 2015年 安宁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    self.title = @"辅助项目";
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"openApp1://"]];
}

@end
