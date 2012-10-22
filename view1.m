//
//  view1.m
//  CApencere
//
//  Created by ipsi ilo on 02.11.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "view1.h"
#import "CApencereViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "view2.h"

@implementation view1

- (IBAction)home:(id)sender
{
	//switchingviewsViewController *second =[[switchingviewsViewController alloc] initWithNibName:nil bundle:nil];
	//[self presentModalViewController:second animated:YES];
    CApencereViewController *tree =[[CApencereViewController alloc] initWithNibName:nil bundle:nil];
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
    [animation setSubtype:kCATransitionFromLeft];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    [[theWindow layer] addAnimation:animation forKey:@"SwitchToView1"];
    
}


- (IBAction)showInfo:(id)sender 
{        
    view2 *controller = [[view2 alloc] 
                         initWithNibName:@"view2" 
                         bundle:nil];
    [self presentModalViewController:controller animated:YES];
    [controller release];
}

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
