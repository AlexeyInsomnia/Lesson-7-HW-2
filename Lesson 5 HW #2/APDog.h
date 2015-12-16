//
//  APDog.h
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APAnimal.h"
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"

@interface APDog : APAnimal <Jumpers, Swimmers, Runners>

@property (assign, nonatomic) float speedJumper;
@property (assign, nonatomic) float heightJump;
- (void) jumpJumper;
- (void) swimSwimmer;
@property (assign, nonatomic) float speedRunner;
@property (assign, nonatomic) float distanceRun;
- (void) runRunner;

@end
