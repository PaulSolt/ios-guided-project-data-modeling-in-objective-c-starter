//
//  LSIFirstResponder.m
//  Quakes-Objc
//
//  Created by Paul Solt on 6/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIFirstResponder.h"

// Swift
//var firstName: String {
//    get {
//
//    }
//    set {
//
//    }
//}

@interface LSIFirstResponder () {
    // Option 1: Declare instance variables (not properties)
//    NSString *_firstName;
}

@end


@implementation LSIFirstResponder

// Placement 1: Sythesize statements
//@synthesize firstName = _firstName;
//@synthesize lastName = _lastName;

// override the default Getter

// Placement 2: Synthesize statements
// this is asking the compiler to generate an instance variable using the format _propertyName
@synthesize firstName = _firstName;
- (NSString *)firstName {
    return _firstName;
}

// override the default Setter
- (void)setFirstName:(NSString *)firstName {
    _firstName = firstName;
}


@end
