//
//  FISCar.m
//  OO-Vehicle
//
//  Created by Chris Gonzales on 5/7/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISCar.h"

@implementation FISCar

//code goes here
- (instancetype)init
{
    self = [super initWithWeight:1270.0
                        topSpeed:88.0
                    currentSpeed:0.0
                currentDirection:0.0];
    
    if (self) {

    }
    
    return self;
}

@end
