//
//  AppDelegate.m
//  LeanMessageDemo
//
//  Created by lzw on 15/5/13.
//  Copyright (c) 2015年 leancloud. All rights reserved.
//

#import "AppDelegate.h"
#import "UIViewController+Swizzled.h"
//#define kApplicationId @"uay57kigwe0b6f5n0e1d4z4xhydsml3dor24bzwvzr57wdap"
//#define kClientKey @"kfgz7jjfsk55r5a8a3y4ttd3je1ko11bkibcikonk32oozww"

#define kApplicationId @"m7baukzusy3l5coew0b3em5uf4df5i2krky0ypbmee358yon"
#define kClientKey @"2e46velw0mqrq3hl2a047yjtpxn32frm0m253k258xo63ft9"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
      SWIZZ_IT;
    // 初始化 LeanCloud SDK 
    [AVOSCloud setApplicationId:kApplicationId clientKey:kClientKey];
#ifdef DEBUG
    [AVAnalytics setAnalyticsEnabled:NO];
    [AVOSCloud setVerbosePolicy:kAVVerboseShow];
    [AVLogger addLoggerDomain:AVLoggerDomainIM];
    [AVLogger addLoggerDomain:AVLoggerDomainCURL];
    [AVLogger setLoggerLevelMask:AVLoggerLevelAll];
#endif
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
