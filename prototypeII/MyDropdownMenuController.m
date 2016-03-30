//
//  MyDropdownMenuController.m
//  DropdownMenuDemo
//
//  Created by Nils Mattisson on 1/13/14.
//  Copyright (c) 2014 Nils Mattisson. All rights reserved.
//

#import "MyDropdownMenuController.h"
#import "IonIcons.h"

@interface MyDropdownMenuController ()

@end

@implementation MyDropdownMenuController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // Customize your menu programmatically here.
    [self customizeMenu];

}

-(void) customizeMenu {
    // EXAMPLE: To set the menubar background colour programmatically.
    // FYI: There is a bug where the color comes out differently when set programmatically
    // than when set in XCode Interface builder, and I don't know why.
    //[self setMenubarBackground:[UIColor greenColor]];
    
    // Replace menu button with an IonIcon.
    [self.menuButton setTitle:nil forState:UIControlStateNormal];
    [self.menuButton setImage:[IonIcons imageWithIcon:icon_navicon size:30.0f color:[UIColor blackColor]] forState:UIControlStateNormal];
    
    //Uncomment to stop drop 'Triangle' from appearing
    //[self dropShapeShouldShowWhenOpen:NO];
    
    //Uncomment to fade to white instead of default (black)
    //[self setFadeTintWithColor:[UIColor whiteColor]];
    
    //Uncomment for increased fade effect (default is 0.5f)
    //[self setFadeAmountWithAlpha:0.2f];
    
    // Style menu buttons with IonIcons.
    for (UIButton *button in self.buttons) {
        
        if ([button.titleLabel.text isEqual: @"General obligations to society"]) {
            
            //////////////////////// Google Analytics for dropdown button press ////////////////
            id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
            [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_3"
                                                                  action:@"ButtonPress"
                                                                   label:@"Code3_info1"
                                                                   value:nil] build]];
            
            //////////////////////////////////////////////////////////////////////////////////////
            [IonIcons label:button.titleLabel setIcon:icon_earth size:15.0f color:[UIColor blackColor] sizeToFit:NO];
            [button setImage:[IonIcons imageWithIcon:icon_earth size:20.0f color:[UIColor blackColor]] forState:UIControlStateNormal];
        } else if ([button.titleLabel.text isEqual: @"General professional obligations"]) {
            //////////////////////// Google Analytics for dropdown button press ////////////////
            id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
            [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_3"
                                                                  action:@"ButtonPress"
                                                                   label:@"Code3_info2"
                                                                   value:nil] build]];
            
            /////////////////////////////////////////////////////////////////////////////////////
            
            [IonIcons label:button.titleLabel setIcon:icon_ios7_gear size:15.0f color:[UIColor blackColor] sizeToFit:NO];
            [button setImage:[IonIcons imageWithIcon:icon_ios7_gear size:20.0f color:[UIColor blackColor]] forState:UIControlStateNormal];
        } else if ([button.titleLabel.text isEqual: @"Obligatons to employers and clients"]) {
            //////////////////////// Google Analytics for dropdown button press ////////////////
            id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
            [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_3"
                                                                  action:@"ButtonPress"
                                                                   label:@"Code3_info3"
                                                                   value:nil] build]];
            
            //////////////////////////////////////////////////////////////////////////////////////
            
            [IonIcons label:button.titleLabel setIcon:icon_android_contact size:15.0f color:[UIColor blackColor] sizeToFit:NO];
            [button setImage:[IonIcons imageWithIcon:icon_android_contact size:20.0f color:[UIColor blackColor]] forState:UIControlStateNormal];
        } else if ([button.titleLabel.text isEqual: @"Obligations owed to other engineers"]) {
            //////////////////////// Google Analytics for dropdown button press ////////////////
            id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
            [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_3"
                                                                  action:@"ButtonPress"
                                                                   label:@"Code3_info4"
                                                                   value:nil] build]];
            
            //////////////////////////////////////////////////////////////////////////////////////
            
            [IonIcons label:button.titleLabel setIcon:icon_ios7_people size:15.0f color:[UIColor blackColor] sizeToFit:NO];
            [button setImage:[IonIcons imageWithIcon:icon_ios7_people size:20.0f color:[UIColor blackColor]] forState:UIControlStateNormal];
        }
        
        // Set the title and icon position
        [button sizeToFit];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, -button.imageView.frame.size.width-10, 0, button.imageView.frame.size.width);
        button.imageEdgeInsets = UIEdgeInsetsMake(0, button.titleLabel.frame.size.width, 0, -button.titleLabel.frame.size.width);
        
        // Set color of the text on the dropdown button (black) 
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}

@end
