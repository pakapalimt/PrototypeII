//
//  popup.h
//  prototypeII
//
//  Created by Pakapan on 23/04/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GAITrackedViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAITracker.h"
// add header for audio 
#import "YMCAudioPlayer.h"

@interface popup : GAITrackedViewController

-(IBAction)information1: (id) sender;
-(IBAction)information2: (id) sender;
-(IBAction)information3: (id) sender;
-(IBAction)information4: (id) sender;
-(IBAction)information5: (id) sender;

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


