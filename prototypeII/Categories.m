//
//  Categories.m
//  ethic
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//


#import "Categories.h"

@interface Categories ()

@end

@implementation Categories


-(IBAction)Button1:(id)sender{
    
    //////////////////////// Google Analytics for random question button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Game"
                                                          action:@"ButtonPress"
                                                           label:@"game_question"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category1SelectedNumber forKey:@"CategorySaved"];
    
}

-(IBAction)Button2:(id)sender{
    //////////////////////// Google Analytics for random question button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Game"
                                                          action:@"ButtonPress"
                                                           label:@"game_question"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    [[NSUserDefaults standardUserDefaults] setInteger:Category2SelectedNumber forKey:@"CategorySaved"];
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    
    Category1Number = arc4random() %3;
    Category2Number = arc4random() %3;
    
    switch (Category1Number) {
        case 0:
            [Category1 setTitle:@"Code of Ethic Question Set 1" forState:UIControlStateNormal];
            Category1SelectedNumber = 1;
            break;
        case 1:
            [Category1 setTitle:@"Code of Ethic Question Set 2" forState:UIControlStateNormal];
            Category1SelectedNumber = 2;
            break;
        case 2:
            [Category1 setTitle:@"Code of Ethic Question Set 3" forState:UIControlStateNormal];
            Category1SelectedNumber = 3;
            break;
        default:
            break;
    }
    
    
    
    
    switch (Category2Number) {
        case 0:
            [Category2 setTitle:@"Code of Ethic Question Set 4" forState:UIControlStateNormal];
            Category2SelectedNumber = 4;
            break;
        case 1:
            [Category2 setTitle:@"Code of Ethic Question Set 5" forState:UIControlStateNormal];
            Category2SelectedNumber = 5;
            break;
        case 2:
            [Category2 setTitle:@"Code of Ethic Question Set 6" forState:UIControlStateNormal];
            Category2SelectedNumber = 6;
            break;
        default:
            break;
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
