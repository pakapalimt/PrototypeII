//
//  ViewController.h
//  SlideOutMenu
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "GAITrackedViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAITracker.h"


// add header for audio
#import "YMCAudioPlayer.h"

@interface ViewController : GAITrackedViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

/// For Zoom ///

- (IBAction)pinch:(UIGestureRecognizer *)sender;
@property (strong, nonatomic) IBOutlet UITextView *textview;

//AUDIO//

@property (nonatomic, strong) YMCAudioPlayer *audioPlayer;

@property (weak, nonatomic) IBOutlet UISlider *currentTimeSlider;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet UILabel *duration;
@property (weak, nonatomic) IBOutlet UILabel *timeElapsed;


@property BOOL isPaused;
@property BOOL scrubbing;

@property NSTimer *timer;


@end
