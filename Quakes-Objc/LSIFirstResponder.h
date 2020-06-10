//
//  LSIFirstResponder.h
//  Quakes-Objc
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIFirstResponder : NSObject

@property (nonatomic) NSString *firstName;

// Properties create 3 things
// 1. setter method
// 2. getter method
// 3. instance variable (only generated if you don't override both setter/getter or getter (if readonly))

@end

NS_ASSUME_NONNULL_END
