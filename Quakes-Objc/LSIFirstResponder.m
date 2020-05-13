//
//  LSIFirstResponder.m
//  Quakes-Objc
//
//  Created by Paul Solt on 5/13/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIFirstResponder.h"

@implementation LSIFirstResponder

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name; // sets instance variable
    }
    return self;
}

// description = CustomStringConvertible (Swift)
// var description { }

- (NSString *)description {
//    return [[NSString alloc] initWithFormat:@"First Responder: %@", self.name]
    
    // Swift
    //return "First Responder: \(self.name)"
    // @"First Responder: " + self.name; // ERROR: doesn't append strings
    return [NSString stringWithFormat:@"First Responder: %@", self.name];
}

// copy


@end
