//
//  FISVehicle.h
//  OO-Vehicle
//
//  Created by Chris Gonzales on 5/7/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISVehicle : NSObject

//code goes here
@property (nonatomic) CGFloat weight;
@property (nonatomic) CGFloat topSpeed;
@property (nonatomic) CGFloat currentSpeed;
@property (nonatomic) CGFloat currentDirection;

- (void)increaseSpeed;
- (void)brake;
- (void)turnLeft;
- (void)turnRight;

// designated initializer
- (instancetype)initWithWeight:(CGFloat)weight
                      topSpeed:(CGFloat)topSpeed
                  currentSpeed:(CGFloat)currentSpeed
              currentDirection:(CGFloat)currentDirection;

@end
