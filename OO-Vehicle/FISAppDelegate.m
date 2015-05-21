//
//  FISAppDelegate.m
//  OO-Vehicle
//
//  Created by Chris Gonzales on 4/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISCar.h"
#import "FISPlane.h"
#import "FISRaceCar.h"
#import "FISVehicle.h"
#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    FISCar *car = [[FISCar alloc] init];
    FISPlane *plane = [[FISPlane alloc] init];
    FISRaceCar *raceCar = [[FISRaceCar alloc] init];
    
    [car increaseSpeed];
    [car brake];
    [car turnLeft];
    [car turnLeft];
    [car turnRight];
    NSLog(@"Car's weight: %.1f, top speed: %.1f, current speed: %.1f, current direction: %.1f",
          car.weight, car.topSpeed, car.currentSpeed, car.currentDirection);
    
    [plane increaseSpeed];
    [plane brake];
    [plane turnLeft];
    [plane turnRight];
    [plane turnRight];
    [plane increaseAltitude];
    [plane decreaseAltitude];
     NSLog(@"Planes's weight: %.1f, top speed: %.1f, current speed: %.1f, current direction: %.1f",
           plane.weight, plane.topSpeed, plane.currentSpeed, plane.currentDirection);
    
    [raceCar increaseSpeed];
    [raceCar brake];
    [raceCar turnLeft];
    [raceCar turnRight];
    [raceCar turnLeft];
     NSLog(@"Race Car's weight: %.1f, top speed: %.1f, current speed: %.1f, current direction: %.1f",
           raceCar.weight, raceCar.topSpeed, raceCar.currentSpeed, raceCar.currentDirection);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
