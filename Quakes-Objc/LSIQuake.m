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
    NSDictionary *properties = dictionary[@"properties"]; // FIXME: Use constants
    NSDictionary *geometry = dictionary[@"geometry"];
    NSArray *coordinates = geometry[@"coordinates"]; // wrong key and it will return nil!
    
    // if valid, create object and return it
    // else (invalid) return nil (failure to parse object)
    
    // Create temporary variables
    NSNumber *magnitudeNumber = properties[@"mag"];
    NSString *place = properties[@"place"];
    NSNumber *timeNumber = properties[@"time"];
    
    NSNumber *latitude = nil;
    NSNumber *longitude = nil;
    
    if (coordinates.count >= 2) { // prevents an indexof bounds crash! JSON data
        // longitude is first in array based on API
        longitude = coordinates[0];
        latitude = coordinates[1];
    } else {
        // failure missing coordinates
        NSLog(@"Missing coordinates"); // TODO: do something???
    }
    
    // required properties for valid object (not always a safe assumption)
    if (magnitudeNumber && place && timeNumber && latitude && longitude) {
        
        NSDate *time = [[NSDate alloc] initWithTimeIntervalSince1970:timeNumber.longValue / 1000.0];
        
        self = [self initWithMagnitude:magnitudeNumber.doubleValue place:place time:time latitude:latitude.doubleValue longitude:longitude.doubleValue];
        return self;
    } else { // missing a property that we consider required, so we'll throw out data
        return nil;
    }
}

@end
