//
//  ViewController.h
//  SlideOutMenu
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

/// For Zoom ///

- (IBAction)pinch:(UIGestureRecognizer *)sender;
@property (strong, nonatomic) IBOutlet UITextView *textview;

@end
