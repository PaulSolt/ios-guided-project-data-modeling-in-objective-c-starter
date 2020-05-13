//
//  ViewController.m
//  Quakes-Objc
//
//  Created by Paul Solt on 2/19/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSIFirstResponder.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LSIFirstResponder *bob = [[LSIFirstResponder alloc] init];
    
    
    bob.name = @"Bob";
    
    NSLog(@"%@", bob);
    
    NSMutableString *name = [NSMutableString stringWithFormat:@"Bob"];
    bob.name = name;

    NSLog(@"%@", bob);

    [name setString:@"Bobby"];
    NSLog(@"%@", bob);

    // Problem: NSMutableString can be passed to a
    // NSString property/method and then data can
    // be changed later at will (without the consent
    // of the actual object) - Breaking Encapsulation

}


@end
