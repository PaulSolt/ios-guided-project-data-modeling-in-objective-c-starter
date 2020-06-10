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
    NSString *_firstName;
}

@end


@implementation LSIFirstResponder

// override the default Getter
- (NSString *)firstName {
    return _firstName;
}

// override the default Setter
- (void)setFirstName:(NSString *)firstName {
    _firstName = firstName;
}


@end
