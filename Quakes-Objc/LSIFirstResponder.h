//
//  LSIFirstResponder.h
//  Quakes-Objc
//
//  Created by Paul Solt on 5/13/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIFirstResponder : NSObject

//NSMutableString (var) vs. NSString (let)

// copy - use with NSString, NSArray (mutable variant)

// mutableCopy -> NSString -> NSMutableString
// copy -> NSString -> NSString
// copy -> NSMutableString -> NSString

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
