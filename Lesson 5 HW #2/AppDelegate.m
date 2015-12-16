//
//  AppDelegate.m
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "AppDelegate.h"
#import "APHuman.h"
#import "APRunner.h"
#import "APBicycler.h"
#import "APSwimmer.h"
#import "APCoder.h"
#import "APDog.h"
#import "APCat.h"
#import "APAnimal.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.


    
    APHuman* human1 = [[APHuman alloc] init];
    human1.name = @"Wasya human";
    human1.height = 180.f;
    human1.weight = 60.f;
    human1.isMale = @"Male";
    
    APRunner* runner1 = [[APRunner alloc] init];
    runner1.name = @"Artem runner";
    runner1.height = 170.f;
    runner1.weight = 65.f;
    runner1.isMale = @"Male";
    runner1.speedRunner = 12.f;
    runner1.distanceRun = 400.f;
    
    APBicycler* bicycler1 = [[APBicycler alloc] init];
    bicycler1.name = @"Kolya bicycler";
    bicycler1.height = 185.f;
    bicycler1.weight = 55.f;
    bicycler1.isMale = @"Male";
    
    APSwimmer* swimmer1 = [[APSwimmer alloc] init];
    swimmer1.name = @"Beauty swimmer";
    swimmer1.height = 158.f;
    swimmer1.weight = 45.f;
    swimmer1.isMale = @"FeMale";
    swimmer1.depthSwim = 40.f;
    swimmer1.speedSwimmer   = 9.f;
    
    NSMutableArray* array = [[NSMutableArray alloc] initWithObjects:human1,
                                                      runner1,
                                                      bicycler1,
                                                      swimmer1,
                                                      nil];
    

    
    APCoder* coder1 = [[APCoder alloc] init];
    coder1.name = @"John coder";
    coder1.height = 177.5f;
    coder1.weight = 65.5f;
    coder1.isMale = @"Male";
    coder1.age = 37;
    coder1.lastName = @"Golt";
    coder1.heightJump = 0.9f;
    coder1.speedJumper = 10.5f;
    
    [array addObject:coder1];
    
    
    APAnimal* animal1 = [[APAnimal alloc] init];
    animal1.petName = @"Zorka";
    animal1.petColor = @"Braun";
    animal1.depthSwim = 11.f;
    animal1.speedSwimmer = 7.7f;
    
    
    APCat* cat1 = [[APCat alloc ] init];
    cat1.petName = @"Onyxia";
    cat1.petColor = @"orange";
    cat1.speedRunner = 17.f;
    cat1.distanceRun = 25.f;
    
    APDog* dog1 = [[APDog alloc ] init];
    dog1.petName = @"Semik";
    dog1.petColor = @"black";
    dog1.heightJump = 1.1f;
    dog1.speedJumper = 30.f;
    dog1.speedRunner = 17.f;
    dog1.distanceRun = 25.f;
    dog1.depthSwim = 11.f;
    dog1.speedSwimmer = 7.7f;
    
    
    
    [array addObject:animal1];
    [array addObject:cat1];
    [array addObject:dog1];
    
    for (id <Runners, Swimmers, Jumpers> rabbits in array ) {
        
        
        APHuman* obj = (APHuman*) rabbits;
        if ([rabbits isKindOfClass:[APHuman class]]) {
            NSLog(@"my name is - %@", obj.name);
        }
        APAnimal* objAnimal = (APAnimal*) rabbits;
        if ([rabbits isKindOfClass:[APAnimal class]]) {
            NSLog(@"my nickName is - %@", objAnimal.petName);
        }
        
        
        if ([rabbits conformsToProtocol:@protocol(Jumpers)] ) {
        
            [rabbits jumpJumper];
            NSLog(@"what is your heightJump and SpedJump \n%.2f, \n%.2f", [rabbits heightJump], [rabbits speedJumper] );
            
            if ([rabbits respondsToSelector:@selector(winnerDanceJumper)]) {
                NSLog(@"what u dance when win ? - \n%@", [rabbits winnerDanceJumper]);
            }
        }
        if ([rabbits conformsToProtocol:@protocol(Swimmers)]) {
            [rabbits swimSwimmer];
            NSLog(@"what is your depthSwin and speedSwimmer -  \n%.2f, %.2f", [rabbits depthSwim], [rabbits speedSwimmer]);
            if ([rabbits respondsToSelector:@selector(winnerDanceSwimmer)]) {
                NSLog(@"what u dance when win ? - \n%@", [rabbits winnerDanceSwimmer]);
            }
        }
        if ([rabbits conformsToProtocol:@protocol(Runners)]) {
            [rabbits runRunner];
             NSLog(@"what is your distance and Speed \n%.2f, \n%.2f", [rabbits distanceRun], [rabbits speedRunner] );
            if ([rabbits respondsToSelector:@selector(winnerDanceRunner)]) {
                NSLog(@"what u dance when win ? - \n%@", [rabbits winnerDanceRunner]);
            }
        }
        
        if (![rabbits conformsToProtocol:@protocol(Jumpers)] && ![rabbits conformsToProtocol:@protocol(Swimmers)] && ![rabbits conformsToProtocol:@protocol(Runners)]) {
            NSLog(@"this being is not conforms any protocol_________________ ");
        }
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
