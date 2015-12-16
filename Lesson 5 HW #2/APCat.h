//
//  APCat.h
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APAnimal.h"
#import "Runners.h"

@interface APCat : APAnimal <Runners>

@property (assign, nonatomic) float speedRunner;
@property (assign, nonatomic) float distanceRun;
- (void) runRunner;

@end
