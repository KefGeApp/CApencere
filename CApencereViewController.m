//
//  CApencereViewController.m
//  CApencere
//
//  Created by ipsi ilo on 02.11.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CApencereViewController.h"
#import "view1.h"
#import <QuartzCore/QuartzCore.h>

@implementation CApencereViewController


- (IBAction)view1:(id)sender
{
	view1 *tree =[[view1 alloc] initWithNibName:nil bundle:nil];
    // get the view that's currently showing
    UIView *currentView = self.view;
    // get the the underlying UIWindow, or the view containing the current view
    UIView *theWindow = [currentView superview];
    
    UIView *newView = tree.view; 
    
    // remove the current view and replace with myView1
    [currentView removeFromSuperview];
    [theWindow addSubview:newView];
    
    // set up an animation for the transition between the views
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.5];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromRight];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    [[theWindow layer] addAnimation:animation forKey:@"SwitchToView1"];
   
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
