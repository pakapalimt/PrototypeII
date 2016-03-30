//
//  popup.m
//  prototypeII
//
//  Created by Pakapan on 23/04/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import "popup.h"

@interface popup ()

@end

@implementation popup


-(IBAction)information1: (id) sender
{

UIImage *btnImage1 = [UIImage imageNamed:@"bb04.png"];
[sender setImage:btnImage1 forState:UIControlStateNormal];

//////////////////////// Google Analytics for information1 button press ////////////////
        id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
        [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_1"
                                                              action:@"ButtonPress"
                                                               label:@"info1"
                                                               value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall regcognise the need to protect life and to safeguard people, and in their engineering activities shall act to address this need" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];
       }

-(IBAction)information2:  (id) sender
{
    
    UIImage *btnImage1 = [UIImage imageNamed:@"bb04.png"];
    [sender setImage:btnImage1 forState:UIControlStateNormal];
 //////////////////////// Google Analytics for information2 button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_1"
                                                          action:@"ButtonPress"
                                                           label:@"info2"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
   UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall understake their engineering activities with profesionalism and integrity and shall work within their levels of competence" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}

-(IBAction)information3: (id) sender
{
    
    UIImage *btnImage1 = [UIImage imageNamed:@"bb04.png"];
    [sender setImage:btnImage1 forState:UIControlStateNormal];
//////////////////////// Google Analytics for information3 button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_1"
                                                          action:@"ButtonPress"
                                                           label:@"info3"
                                                           value:nil] build]];
    
    //////////////////////////////////////////////////////////////////////////////////////////
   
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall regcognise the responsibility of the profession to actively contribute to the well-being of society and, when involved in any engineering activity shall endeavour to identify, inform and consult affected parties" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];}

-(IBAction)information4: (id) sender
{
    
    UIImage *btnImage1 = [UIImage imageNamed:@"bb04.png"];
    [sender setImage:btnImage1 forState:UIControlStateNormal];
    
    //////////////////////// Google Analytics for information4 button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_1"
                                                          action:@"ButtonPress"
                                                           label:@"info4"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall regcognise and respect the need for sustainable management of the planet's resource and endeavour to minimise adverse environmental impacts of their engineering activities for present and future generations" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}

-(IBAction)information5: (id) sender
{
    
    UIImage *btnImage1 = [UIImage imageNamed:@"bb04.png"];
    [sender setImage:btnImage1 forState:UIControlStateNormal];

    //////////////////////// Google Analytics for information5 button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_1"
                                                          action:@"ButtonPress"
                                                           label:@"info5"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall seek to contribute to the development of their own and engineering profession's knowledge, skill and expertise for the benefit of society" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}


//////////////////////////////////////////////////////////////////////////////////////////////

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
    self.screenName = @"Code_1";
    [super viewDidLoad];
    /////////////////////////////////////////// AUDIO ////////////////////////////
    self.audioPlayer = [[YMCAudioPlayer alloc] init];
    //[self setupAudioPlayer:@"audiofile"];
    [self setupAudioPlayer:@"audio4"];
    //////////////////////////////////////////
    // Do any additional setup after loading the view.
}

/*
 * Hide the statusbar
 */
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

/*
 * Setup the AudioPlayer with
 * Filename and FileExtension like mp3
 * Loading audioFile and sets the time Labels
 */
- (void)setupAudioPlayer:(NSString*)fileName
{
    //insert Filename & FileExtension
    NSString *fileExtension = @"m4a";
    
    //init the Player to get file properties to set the time labels
    [self.audioPlayer initPlayer:fileName fileExtension:fileExtension];
    self.currentTimeSlider.maximumValue = [self.audioPlayer getAudioDuration];
    
    //init the current timedisplay and the labels. if a current time was stored
    //for this player then take it and update the time display
    self.timeElapsed.text = @"0:00";
    
    self.duration.text = [NSString stringWithFormat:@"-%@",
                          [self.audioPlayer timeFormat:[self.audioPlayer getAudioDuration]]];
    
}

/*
 * PlayButton is pressed
 * plays or pauses the audio and sets
 * the play/pause Text of the Button
 */
- (IBAction)playAudioPressed:(id)playButton
{
    //////////////////////// Google Analytics for playvideo button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Code_1"
                                                          action:@"ButtonPress"
                                                           label:@"Code_1_audio"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    [self.timer invalidate];
    //play audio for the first time or if pause was pressed
    if (!self.isPaused) {
        [self.playButton setBackgroundImage:[UIImage imageNamed:@"pause.png"]
                                   forState:UIControlStateNormal];
        
        //start a timer to update the time label display
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(updateTime:)
                                                    userInfo:nil
                                                     repeats:YES];
        
        [self.audioPlayer playAudio];
        self.isPaused = TRUE;
        
    } else {
        //player is paused and Button is pressed again
        [self.playButton setBackgroundImage:[UIImage imageNamed:@"play.png"]
                                   forState:UIControlStateNormal];
        
        [self.audioPlayer pauseAudio];
        self.isPaused = FALSE;
    }
}

/*
 * Updates the time label display and
 * the current value of the slider
 * while audio is playing
 */
- (void)updateTime:(NSTimer *)timer {
    //to don't update every second. When scrubber is mouseDown the the slider will not set
    if (!self.scrubbing) {
        self.currentTimeSlider.value = [self.audioPlayer getCurrentAudioTime];
    }
    self.timeElapsed.text = [NSString stringWithFormat:@"%@",
                             [self.audioPlayer timeFormat:[self.audioPlayer getCurrentAudioTime]]];
    
    self.duration.text = [NSString stringWithFormat:@"-%@",
                          [self.audioPlayer timeFormat:[self.audioPlayer getAudioDuration] - [self.audioPlayer getCurrentAudioTime]]];
    
    //When resetted/ended reset the playButton
    if (![self.audioPlayer isPlaying]) {
        [self.playButton setBackgroundImage:[UIImage imageNamed:@"play.png"]
                                   forState:UIControlStateNormal];
        [self.audioPlayer pauseAudio];
        self.isPaused = FALSE;
    }
}

/*
 * Sets the current value of the slider/scrubber
 * to the audio file when slider/scrubber is used
 */
- (IBAction)setCurrentTime:(id)scrubber {
    //if scrubbing update the timestate, call updateTime faster not to wait a second and dont repeat it
    [NSTimer scheduledTimerWithTimeInterval:0.01
                                     target:self
                                   selector:@selector(updateTime:)
                                   userInfo:nil
                                    repeats:NO];
    
    [self.audioPlayer setCurrentAudioTime:self.currentTimeSlider.value];
    self.scrubbing = FALSE;
}

/*
 * Sets if the user is scrubbing right now
 * to avoid slider update while dragging the slider
 */
- (IBAction)userIsScrubbing:(id)sender {
    self.scrubbing = TRUE;
}

///////////////////////////////AUDIO CODE SECTION ENDS HERE ////////////////////////////////

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
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
