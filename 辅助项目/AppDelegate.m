//
//  AppDelegate.m
//  辅助项目
//
//  Created by 安宁 on 15/11/15.
//  Copyright © 2015年 安宁. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
    
    [self.window makeKeyAndVisible];
    

    return YES;
}

//-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options
//{
//
//    [[[UIAlertView alloc]initWithTitle:nil message:[NSString stringWithFormat:@"%@ \n%@",url, options] delegate:nil cancelButtonTitle:@"cancle" otherButtonTitles:nil]show];
//    
//    return YES;
//}


@end
