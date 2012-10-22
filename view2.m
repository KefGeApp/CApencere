//
//  view2.m
//  CApencere
//
//  Created by ipsi ilo on 03.11.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "view2.h"
#import "view1.h"

@implementation view2
@synthesize dismissViewButton;
- (IBAction)dismissView:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)back:(id)sender 
{        
    view1 *controller = [[view1 alloc] 
                         initWithNibName:@"view1" 
                         bundle:nil];
    // controller.delegate = self;
  
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
