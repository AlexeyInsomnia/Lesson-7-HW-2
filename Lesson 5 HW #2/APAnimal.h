//
//  APAnimal.h
//  Lesson 5 HW #2
//
//  Created by Alex on 14.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Swimmers.h"

@interface APAnimal : NSObject <Swimmers>

@property (strong, nonatomic) NSString* petName;
@property (strong, nonatomic) NSString* petColor;

- (void) petMethod;


@property (assign, nonatomic) float speedSwimmer;
@property (assign, nonatomic) float depthSwim;
- (void) swimSwimmer;

@end
