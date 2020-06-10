//
//  LSIQuake.h
//  Quakes-Objc
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIQuake : NSObject

// More property attributes
// assign*, copy

@property (nonatomic) NSNumber *magnitude; // double cannot be nil (not optional)
//@property (nonatomic) double magnitude; // double cannot be nil (not optional)
@property (nonatomic, copy) NSString *place;
@property (nonatomic) NSDate *time;
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;

// We can't use JSONEncoder / JSONDecoder in Objc or mixed language Swift+Objc (model)

// Use NSJSONSerialization for Objc or mixed langauge models

// If you ever write C, Objective-C, C++ or any language that has 2 code files per Class
// Always put your comments in the header file (.h)
- (instancetype)initWithMagnitude:(NSNumber *)magnitude place:(NSString *)place time:(NSDate *)time latitude:(double)latitude longitude:(double)longitude;

// Use this method with NSJSONSerialization


/// Sets up object with a dictionary from JSON
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
