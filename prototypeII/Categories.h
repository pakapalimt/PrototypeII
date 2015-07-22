//
//  Categories.h
//  ethic
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>

int Category1Number;
int Category2Number;
NSInteger Category1SelectedNumber;
NSInteger Category2SelectedNumber;



@interface Categories : UIViewController
{
    
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
    
}

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;

@end
