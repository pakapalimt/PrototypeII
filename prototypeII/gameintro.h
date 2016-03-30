//
//  gameintro.h
//  prototype_II
//
//  Created by Pakapan on 19/02/16.
//  Copyright © 2016 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GAITrackedViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAITracker.h"

// add header for audio
#import "YMCAudioPlayer.h"

@interface gameintro : GAITrackedViewController
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
