//
//  AppDelegate.m
//  iOS 3DTouch
//
//  Created by chenjunfeng on 2017/8/30.
//  Copyright © 2017年 chenjunfeng. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    [self creatShortcutItem];
    
    UIApplicationShortcutItem *shortcutItem = [launchOptions valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
    if (shortcutItem) {
        if ([shortcutItem.type isEqualToString:@"com.ccc.compose"]) {
            NSLog(@"启动APP--进入compose页面");
            // 干事
        }else if ([shortcutItem.type isEqualToString:@"com.ccc.add"])
        {
            NSLog(@"启动APP--进入add页面");
            // 干事
        }else if ([shortcutItem.type isEqualToString:@"com.ccc.play"])
        {
            NSLog(@"启动APP--进入play页面");
            // 干事
        }else if ([shortcutItem.type isEqualToString:@"com.ccc.share"])
        {
            NSLog(@"启动APP--进入share页面");
            // 干事
        }
        return NO;
    }
    
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    if (shortcutItem) {
        if ([shortcutItem.type isEqualToString:@"com.ccc.compose"]) {
            NSLog(@"APP在后台活动--进入compose页面");
            // 干事
        }else if ([shortcutItem.type isEqualToString:@"com.ccc.add"])
        {
            NSLog(@"APP在后台活动P--进入add页面");
            // 干事
        }else if ([shortcutItem.type isEqualToString:@"com.ccc.play"])
        {
            NSLog(@"APP在后台活动--进入play页面");
            // 干事
        }else if ([shortcutItem.type isEqualToString:@"com.ccc.share"])
        {
            NSLog(@"APP在后台活动--进入share页面");
            // 干事
        }
    }
    
    if (completionHandler) {
        completionHandler(YES);
    }
}



#pragma mark - 屏幕图标 3DTouch 快捷选项
- (void)creatShortcutItem
{
    //创建系统样式快捷图标
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay];
    UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare];
    
    
    //创建快捷选项
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc] initWithType:@"com.ccc.compose" localizedTitle:@"撰写新内容" localizedSubtitle:@"副标题副标题" icon:icon1 userInfo:nil];
    
    UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc] initWithType:@"com.ccc.add" localizedTitle:@"添加新朋友" localizedSubtitle:@"副标题副标题" icon:icon2 userInfo:nil];
    UIApplicationShortcutItem *item3 = [[UIApplicationShortcutItem alloc] initWithType:@"com.ccc.play" localizedTitle:@"播放" localizedSubtitle:@"副标题副标题" icon:icon3 userInfo:nil];
    UIApplicationShortcutItem *item4 = [[UIApplicationShortcutItem alloc] initWithType:@"com.ccc.share" localizedTitle:@"分享" localizedSubtitle:@"副标题副标题" icon:icon4 userInfo:nil];

    
    //添加到快捷选项数组
    [UIApplication sharedApplication].shortcutItems = @[item1,item2,item3,item4];
    
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
