//
//  AppDelegate.h
//  程序间通讯
//
//  Created by 安宁 on 15/11/15.
//  Copyright © 2015年 安宁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end


#if 0

#pragma mark - 1 简介

由于ios程序本身采用沙盒结构，比较封闭。各个app间是比较独立的。但是ios还提供了一些app间通信的接口。



#pragma mark - 2 要跳转到的app的配置 即自己的app设置URL schemes 让别人跳转

#pragma mark - 2.1 注册url schemes

在targets --> info --> url types 里增加untitled 设置url schemes 假设URL schemes 为App1

#pragma mark - 2.2 实现回调方法 回调方法是接受别人跳转到自己app 给自己app传递的值

在AppDelegate里实现-(BOOL)application:(UIApplication *)application openURL:(nonnull NSURL *)url options:(nonnull NSDictionary<NSString *,id> *)options

#pragma mark - 3 实现跳转的app的实现代码

#pragma mark - 3.1 判断系统里是否安装了要跳转的app 注意URL的写法

例子中要跳转到的app的配置中注册了URL scheme为@"App1"，我们可以通过
[[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"App1://"]]来判断系统里是否发装了要跳转到的app。

#pragma mark - (url字符串的解释)

[NSURL URLWithString:@"App1://"]
这里的 App1 为要跳转到的app的配置中注册的 URL scheme

//后面的内容为要跳转到的app规定的内容 格式类似于http请求中的get方法的格式  如app1://key1=1?key2=2

#pragma mark - 3.2 跳转到另一个app 开始实现通讯

[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"App1://"]]来启动另一个app
参数要根据App1里规定的方式传递，一般就像http的get方式传参一样。
当然启动以后，自己的应用就会退到后台，想要再切回来，就要在自己的应用里也注册URL scheme。做为回调参数传给微博app。

#pragma mark - 4 跳转到系统设置

#pragma mark - 4.1 ios5.1之前
如下是跳转到系统设置诸多界面的url
About — prefs:root=General&path=About

Accessibility — prefs:root=General&path=ACCESSIBILITY

Airplane Mode On — prefs:root=AIRPLANE_MODE

Auto-Lock — prefs:root=General&path=AUTOLOCK

Brightness — prefs:root=Brightness

Bluetooth — prefs:root=General&path=Bluetooth

Date & Time — prefs:root=General&path=DATE_AND_TIME

FaceTime — prefs:root=FACETIME

General — prefs:root=General

Keyboard — prefs:root=General&path=Keyboard

iCloud — prefs:root=CASTLE

iCloud Storage & Backup — prefs:root=CASTLE&path=STORAGE_AND_BACKUP

International — prefs:root=General&path=INTERNATIONAL

Location Services — prefs:root=LOCATION_SERVICES

Music — prefs:root=MUSIC

Music Equalizer — prefs:root=MUSIC&path=EQ

Music Volume Limit — prefs:root=MUSIC&path=VolumeLimit

Network — prefs:root=General&path=Network

Nike + iPod — prefs:root=NIKE_PLUS_IPOD

Notes — prefs:root=NOTES

Notification — prefs:root=NOTIFICATIONS_ID

Phone — prefs:root=Phone

Photos — prefs:root=Photos

Profile — prefs:root=General&path=ManagedConfigurationList

Reset — prefs:root=General&path=Reset

Safari — prefs:root=Safari

Siri — prefs:root=General&path=Assistant

Sounds — prefs:root=Sounds

Software Update — prefs:root=General&path=SOFTWARE_UPDATE_LINK

Store — prefs:root=STORE

Twitter — prefs:root=TWITTER

Usage — prefs:root=General&path=USAGE

VPN — prefs:root=General&path=Network/VPN

Wallpaper — prefs:root=Wallpaper

Wi-Fi — prefs:root=WIFI

[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=General&path=Keyboard"]];

ios 5.1之后系统不再支持这些url跳转调用到系统

#pragma mark - 4.2 ios8.0以后

[[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]]


#endif