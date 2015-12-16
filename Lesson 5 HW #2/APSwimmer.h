//
//  APSwimmer.h
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APHuman.h"
#import "Swimmers.h"

@interface APSwimmer : APHuman <Swimmers>

@property (assign, nonatomic) float speedSwimmer;
@property (assign, nonatomic) float depthSwim;
- (void) swimSwimmer;


- (NSString*) winnerDanceSwimmer;

@end
