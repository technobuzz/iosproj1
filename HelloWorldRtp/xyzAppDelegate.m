 //
//  xyzAppDelegate.m
//  HelloWorldRtp
//
//  Created by CSG_Mobile04 on 10/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "xyzAppDelegate.h"

#import "xyzViewController.h"

#import "Person.h"

@implementation xyzAppDelegate


@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions


{
    
    NSMutableArray *array;
    array = [[NSMutableArray alloc]initWithCapacity:0]; 
    
    Person *me = [[[Person alloc] init]autorelease];
    me.firstName = @"David"  ;
    me.lastName = @"Letterman";
    me.title = @"CBS Anchor";
    
    [array addObject:me];
    
    Person *me2 = [[[Person alloc] init]autorelease];   
    
    me2.firstName = @"Jay"  ;
    me2.lastName = @"Leno";
    me2.title = @"NBC Anchor";
    
    [array addObject:me2];    
        
    PeopleController *peopleController = [[[PeopleController alloc] initWithNibName:nil bundle:nil] autorelease];
    
    peopleController.array = array;    
    
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[UINavigationController alloc] initWithRootViewController:peopleController] autorelease];
    
    
    
    


    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
