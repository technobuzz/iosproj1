//
//  PersonDetailsController.h
//  HelloWorldRtp
//
//  Created by CSG_Mobile04 on 10/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonDetailsController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *LastNameLabel;
@property (retain, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (retain, nonatomic) IBOutlet UILabel *Title;

@property (retain,nonatomic) Person  *person;

@end  
