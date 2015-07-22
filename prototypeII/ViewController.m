//
//  ViewController.m
//  SlideOutMenu
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"


@interface ViewController ()

@end

@implementation ViewController

// Zoom //

- (IBAction)pinch:(UIGestureRecognizer *)sender{
    // NSLog(@"pinched");
    CGFloat lastScaleFactor =1;
    CGFloat factor = [(UIPinchGestureRecognizer *)sender scale];
    
    if (factor >1) { //zoom in
        _textview.transform=CGAffineTransformMakeScale(lastScaleFactor + (factor -1), lastScaleFactor + (factor -1));
        
    }else { //zoom out
        _textview.transform=CGAffineTransformMakeScale(lastScaleFactor * factor , lastScaleFactor * factor );
    }
    
    if (sender.state==UIGestureRecognizerStateEnded) {
        if (factor>1)
            
            lastScaleFactor += (factor-1);
        else
            lastScaleFactor *= factor;
        
    }
    
    
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//////////////////////////////////////////

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    


    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
