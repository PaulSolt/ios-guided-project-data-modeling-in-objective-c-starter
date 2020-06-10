//
//  LSIQuakeResults.m
//  Quakes-Objc
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIQuakeResults.h"
#import "LSIQuake.h"

@implementation LSIQuakeResults

- (instancetype)initWithQuakes:(NSArray *)quakes
{
    self = [super init];
    if (self) {
        _quakes = [quakes copy];
    }
    return self;
}

// this implementation will return an empty array (if invalid quake json) or an array of quakes
- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSArray *quakesDictionaries = dictionary[@"features"];
    NSMutableArray *quakes = [[NSMutableArray alloc] init];
    
    for (NSDictionary *quakeDictionary in quakesDictionaries) {
        LSIQuake *quake = [[LSIQuake alloc] initWithDictionary: quakeDictionary];
        if (quake) {
            [quakes addObject:quake];
        } else {
            // If you see this, debug and figure out what other fields might be optional
            NSLog(@"Invalid quake object: %@", quakeDictionary);
        }
    }
    
    self = [self initWithQuakes:quakes];
    return self;
}
@end
