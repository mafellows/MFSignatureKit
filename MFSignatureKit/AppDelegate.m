//
//  AppDelegate.m
//  MFSignatureKit
//
//  Created by Michael Fellows on 3/4/14.
//  Copyright (c) 2014 Michael Fellows. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    BaseViewController *baseVC = [[BaseViewController alloc] init];
    [self.window setRootViewController:baseVC];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
