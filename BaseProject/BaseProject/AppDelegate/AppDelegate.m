//
//  AppDelegate.m
//  BaseProject
//
//  Created by Pack Zhang on 17/3/14.
//
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //_window.rootViewController = ...
    
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
