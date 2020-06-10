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

@property double magnitude;
@property NSString *place;
@property NSDate *time;
@property double latitude;
@property double longitude;

// We can't use JSONEncoder / JSONDecoder in Objc or mixed language Swift+Objc (model)

// Use NSJSONSerialization for Objc or mixed langauge models

- (instancetype)initWithMagnitude:(double)magnitude place:(NSString *)place time:(NSDate *)time latitude:(double)latitude longitude:(double)longitude;

// Use this method with NSJSONSerialization
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
