//
//  Runners.h
//  Lesson 5 HW #2
//
//  Created by Alex on 16.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Runners <NSObject>

@required

@property (assign, nonatomic) float speedRunner;
@property (assign, nonatomic) float distanceRun;
- (void) runRunner;

@optional

- (NSString*) winnerDanceRunner;

@end
