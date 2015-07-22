//
//  Game.h
//  ethic
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//
#import <UIKit/UIKit.h>

NSInteger CategoryLoaded;
int QuestionSelected;
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
int ScoreNumber;
int LivesNumber;
BOOL GameInProgress;


@interface Game : UIViewController
{
    
    IBOutlet UILabel *CategorySelected;
    IBOutlet UILabel *QuestionText;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIButton *NextCategory;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Lives;
    IBOutlet UIImageView *Result;

    
}

-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(void)Category1;
-(void)Category2;
-(void)Category3;
-(void)Category4;
-(void)Category5;
-(void)Category6;
-(void)RightAnswer;
-(void)WrongAnswer;


@end
