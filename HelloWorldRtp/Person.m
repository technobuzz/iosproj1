//
//  Person.m
//  HelloWorldRtp
//
//  Created by CSG_Mobile04 on 10/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize firstName, lastName , title;


- (void)dealloc {
    [firstName release];
    [lastName release];
    [title release];
    [super dealloc];
}


@end
