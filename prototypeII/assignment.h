//
//  assignment.h
//  prototypeII
//
//  Created by Pakapan on 13/08/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GAITrackedViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAITracker.h"

#import <MessageUI/MessageUI.h>

// add header for audio
#import "YMCAudioPlayer.h"

//@interface assignment : UIViewController <MFMailComposeViewControllerDelegate> // Add the delegate
@interface assignment : GAITrackedViewController <MFMailComposeViewControllerDelegate>
- (IBAction)showEmail:(id)sender;

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
