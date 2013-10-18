//
//  AppDelegate.m
//  Tap Me
//
//  Created by ConquerSHDD on 10/17/2013.
//  Copyright (c) 2013 ConquerSHDD. All rights reserved.
//

#import "AppDelegate.h"
#include "Animal.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    Animal *myFirstPet = [[Animal alloc] init];
    [myFirstPet setAnimalName:@"Rover"];
    [myFirstPet setTotalLegs:4];
    [myFirstPet setHasFur:YES];
    
    Animal *mySecondPet = [[Animal alloc] init];
    [myFirstPet setAnimalName:@"Jack"];
    [myFirstPet setTotalLegs:2];
    [myFirstPet setHasFur:NO];
    
    NSLog(@"%@ has %i legs", myFirstPet.animalName, myFirstPet.totalLegs);
    [myFirstPet doTrick:5 isHungry:YES eatFood:@"Biscuits"];
    
    NSMutableArray *myArray = [[NSMutableArray alloc] initWithCapacity:0];
    [myArray addObject:myFirstPet];
    [myArray addObject:mySecondPet];
    
    for(Animal *animal in myArray) {
        [animal doTrick:7 isHungry:FALSE eatFood:@"Nothing"];
    }
    
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
