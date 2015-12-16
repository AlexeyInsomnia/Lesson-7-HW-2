//
//  Swimmers.h
//  Lesson 5 HW #2
//
//  Created by Alex on 16.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Swimmers <NSObject>

@required

@property (assign, nonatomic) float speedSwimmer;
@property (assign, nonatomic) float depthSwim;
- (void) swimSwimmer;

@optional

- (NSString*) winnerDanceSwimmer;

@end
