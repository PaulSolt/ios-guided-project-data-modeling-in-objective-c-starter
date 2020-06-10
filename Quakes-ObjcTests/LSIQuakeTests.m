//
//  LSIQuakeTests.m
//  Quakes-ObjcTests
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSIQuake.h"
#import "LSIFileHelper.h"
#import "LSILog.h"

@interface LSIQuakeTests : XCTestCase

@end

@implementation LSIQuakeTests

- (void)testQuakeParses {
    
    NSData *quakeData = loadFile(@"Quake.json", [LSIQuakeTests class]);
    NSLog(@"NSData: %@", quakeData);
    
    // Swift: do/catch (try)
    
    // Objc: NSError -> pass in a variable to update if it fails
    NSError *error = nil; // nil means no error
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:quakeData options:0 error:&error]; // & = address of operator (shift + 7)
    
    if (error) { // (error != nil) {
        XCTFail(@"Error decoding JSON: %@", error);
    }
    
    NSLog(@"JSON: %@", json);
    
    NSDate *time = [NSDate dateWithTimeIntervalSince1970:1388620296020 / 1000.0];
    LSIQuake *quake = [[LSIQuake alloc] initWithDictionary:json];
    
    NSLog(@"quake: %@", quake);
    
    XCTAssertEqualWithAccuracy(1.29, quake.magnitude, 0.0001);
    
    XCTAssertEqualObjects(@"10km SSW of Idyllwild, CA", quake.place);
    XCTAssertEqualObjects(time, quake.time);
    
    XCTAssertEqualWithAccuracy(33.663333299999998, quake.latitude, 0.0001);
    XCTAssertEqualWithAccuracy(-116.7776667, quake.longitude, 0.0001);
}


@end
