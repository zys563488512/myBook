//
//  AppDelegate.m
//  MyBook
//
//  Created by 张永盛 on 15/8/21.
//  Copyright (c) 2015年 zhangyongsheng. All rights reserved.
//

#import "AppDelegate.h"
#import <BmobSDK/Bmob.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Bmob registerWithAppKey:@"f123c5b42b0d20ba6e5856dfc5db8343"];
//添加数据到bmob中
    //往GameScore表添加一条playerName为小明，分数为78的数据
//    BmobObject *gameScore = [BmobObject objectWithClassName:@"GameScore"];
//    [gameScore setObject:@"小明" forKey:@"playerName"];
//    [gameScore setObject:@78 forKey:@"score"];
//    [gameScore setObject:[NSNumber numberWithBool:YES] forKey:@"cheatMode"];
//    [gameScore saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
//        //进行操作
//    }];
    
//获取一行数据
    //查找GameScore表
//    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"GameScore"];
//    //查找GameScore表里面id为0c6db13c的数据
//    [bquery getObjectInBackgroundWithId:@"0c6db13c" block:^(BmobObject *object,NSError *error){
//        if (error){
//            //进行错误处理
//        }else{
//            //表里有id为0c6db13c的数据
//            if (object) {
//                //得到playerName和cheatMode
//                NSString *playerName = [object objectForKey:@"playerName"];
//                BOOL cheatMode = [[object objectForKey:@"cheatMode"] boolValue];
//                NSLog(@"%@----%i",playerName,cheatMode);
//            }
//        }
//    }];
//    修改一行数据
    //查找GameScore表
//    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"GameScore"];
//    //查找GameScore表里面id为0c6db13c的数据
//    [bquery getObjectInBackgroundWithId:@"0c6db13c" block:^(BmobObject *object,NSError *error){
//        //没有返回错误
//        if (!error) {
//            //对象存在
//            if (object) {
//                BmobObject *obj1 = [BmobObject objectWithoutDatatWithClassName:object.className objectId:object.objectId];
//                //设置cheatMode为YES
//                [obj1 setObject:[NSNumber numberWithBool:YES] forKey:@"cheatMode"];
//                //异步更新数据
//                [obj1 updateInBackground];
//            }
//        }else{
//            //进行错误处理
//        }
//    }];

    
//    删除一行数据
//    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GameScore"];
//    [bquery getObjectInBackgroundWithId:@"0c6db13c" block:^(BmobObject *object, NSError *error){
//        if (error) {
//            //进行错误处理
//        }
//        else{
//            if (object) {
//                //异步删除object
//                [object deleteInBackground];
//            }
//        }
//    }];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
