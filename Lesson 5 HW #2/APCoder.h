//
//  APCoder.h
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APHuman.h"
#import "Jumpers.h"

@interface APCoder : APHuman <Jumpers>

@property (strong, nonatomic) NSString* lastName;
@property (assign, nonatomic) NSInteger age;


@property (assign, nonatomic) float speedJumper;
@property (assign, nonatomic) float heightJump;

- (void) jumpJumper;

- (NSString*) winnerDanceJumper;

@end
