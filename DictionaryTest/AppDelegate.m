//
//  AppDelegate.m
//  DictionaryTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor lightGrayColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];

    NSDictionary* dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                @"Petrov",@"lastName",
                                @"Vasiliy",@"name",
                                [NSNumber numberWithInt:25],@"age",
                                nil];
    
    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                 @"Petrov",@"lastName",
                                 @"Vasiliy",@"name",
                                 [NSNumber numberWithInt:25],@"age",
                                 nil];
    
    NSDictionary* dictionary3 = @{@"lastName":@"Petrov", @"name":@"Vasiliy", @"age":@25};
    
    NSInteger intNum = 25;
    NSDictionary* dictionary4 = @{@"lastName":@"Petrov", @"name":@"Vasiliy", @"age":@(intNum)};
    
    NSLog(@"dict = %@, count = %d", dictionary, [dictionary count]);
    
    NSLog(@"name = %@, lastname = %@, age = %ld",
          [dictionary4 objectForKey:@"name"],
          [dictionary4 objectForKey:@"lastName"],
          [[dictionary4 objectForKey:@"age"] integerValue]);
    
    for (NSString* key in [dictionary3 allKeys]) {
        id obj = [dictionary3 objectForKey:key];
        
        NSLog(@"key = %@, value = %@", key, obj);
    }
    
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
