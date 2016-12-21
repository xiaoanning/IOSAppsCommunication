//
//  AppDelegate.m
//  程序间通讯
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
//-(BOOL)application:(UIApplication *)application openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<NSString *,id> *)options
//{
//
//    //这里的URL 和 要跳转进来的app实现代码[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"openApp2://key1=1?key2=2"]]中的URL是一致的
//    
//    return YES;
//}

@end
