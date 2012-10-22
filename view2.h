//
//  view2.h
//  CApencere
//
//  Created by ipsi ilo on 03.11.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface view2 : UIViewController
{
    UIButton *dismissViewButton;
}
@property (nonatomic, retain) IBOutlet UIButton *dismissViewButton;
- (IBAction)back:(id)sender;
- (IBAction)dismissView:(id)sender;

@end
