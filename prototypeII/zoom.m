//
//  zoom.m
//  prototypeII
//
//  Created by Pakapan on 23/04/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import "zoom.h"

@interface zoom ()

@end

@implementation zoom


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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
