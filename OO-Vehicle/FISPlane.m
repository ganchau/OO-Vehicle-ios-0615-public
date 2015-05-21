//
//  FISPlane.m
//  OO-Vehicle
//
//  Created by Chris Gonzales on 5/7/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISPlane.h"

@implementation FISPlane

//code goes here
- (void)increaseAltitude
{
    self.currentAltitude = self.topAltitude;
}

- (void)decreaseAltitude
{
    self.currentAltitude = 0.0;
}

- (instancetype)init
{
    self = [super initWithWeight:255000.0
                        topSpeed:614.0
                    currentSpeed:0.0
                currentDirection:0.0];
    if (self) {
        _currentAltitude = 0.0;
        _topAltitude = 30000;
    }
    
    return self;
}

@end
