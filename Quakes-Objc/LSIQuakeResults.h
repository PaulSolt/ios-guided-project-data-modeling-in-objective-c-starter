//
//  LSIQuakeResults.h
//  Quakes-Objc
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Forward declare class (faster build time and prevents build cycles)
@class LSIQuake;

NS_ASSUME_NONNULL_BEGIN

@interface LSIQuakeResults : NSObject

@property (nonatomic, copy) NSArray<LSIQuake *> *quakes;

- (instancetype)initWithQuakes:(NSArray *)quakes;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
