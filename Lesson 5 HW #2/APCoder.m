//
//  APCoder.m
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APCoder.h"

@implementation APCoder

- (void) moveMent {
    [super moveMent];
    NSLog(@"this is method of Coder");
}

- (void) jumpJumper {
    NSLog(@"this is Method from Protocol Jumpers for Coder");
}

- (NSString*) winnerDanceJumper {
     return @"this is optional method Dance for Coder";
}

@end
