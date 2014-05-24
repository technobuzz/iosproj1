//
//  PersonDetailsController.m
//  HelloWorldRtp
//
//  Created by CSG_Mobile04 on 10/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PersonDetailsController.h"

@implementation PersonDetailsController
@synthesize LastNameLabel;
@synthesize firstNameLabel;
@synthesize Title;
@synthesize person;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firstNameLabel.text = person.firstName;
    self.LastNameLabel.text =  person.lastName;
    self.Title.text = person.title;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFirstNameLabel:nil];
    [self setLastNameLabel:nil];
    [self setTitle:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [firstNameLabel release];
    [LastNameLabel release];
    [Title release];
    [super dealloc];
}
@end
