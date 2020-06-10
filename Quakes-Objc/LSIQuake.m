//
//  LSIQuake.m
//  Quakes-Objc
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIQuake.h"

@implementation LSIQuake

- (instancetype)initWithMagnitude:(double)magnitude
                            place:(NSString *)place
                             time:(NSDate *)time
                         latitude:(double)latitude
                        longitude:(double)longitude {
    self = [super init]; // NSObject init
    if (self) {
        // Comment on implementation details in the methods

        // Use _variableName for init (don't want side effects - Tuesday KVO/KVC, computed properties)
        _magnitude = magnitude;
        
        // NSMutableString -> NSString
        // Always use copy to turn a NSMutableString (var or variable) into a immutable NSString (let or constant)
        _place = [place copy];
        _time = time;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

// This will be a convenience initializer and call the previous init
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    // pull out data from dictionary
    
    // dictionaries/arrays at top as we drill into data
    
    
    // if valid, create object and return it
    // else (invalid) return nil (failure to parse object)
    
    return nil;
}

@end
