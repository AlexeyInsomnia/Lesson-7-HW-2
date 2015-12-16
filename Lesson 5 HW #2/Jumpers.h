//
//  Jumpers.h
//  Lesson 5 HW #2
//
//  Created by Alex on 16.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Jumpers <NSObject>

@required

@property (assign, nonatomic) float speedJumper;
@property (assign, nonatomic) float heightJump;
- (void) jumpJumper;

@optional

- (NSString*) winnerDanceJumper;

@end
