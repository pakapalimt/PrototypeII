//
//  Game.m
//  ethic
//
//  Created by Pakapan on 2/12/14.
//  Copyright (c) 2014 Pakapan. All rights reserved.
//
#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)RightAnswer{
    
    ScoreNumber = ScoreNumber + 1;
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    NextCategory.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    Result.image = [UIImage imageNamed:@"right.png"];
    
    if(ScoreNumber == 3){
        Result.image = [UIImage imageNamed:@"win.png"];
        NextCategory.hidden = NO;
        Exit.hidden = NO;
        GameInProgress = NO;    }
    
    
}



-(void)WrongAnswer{
    
    LivesNumber = LivesNumber - 1;
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    NextCategory.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    Result.image = [UIImage imageNamed:@"wrong.png"];
    
    if (LivesNumber == 0) {
       
        Result.image = [UIImage imageNamed:@"lose.png"];
        NextCategory.hidden = NO;
        Exit.hidden = NO;
        GameInProgress = NO;
        
    }
    
    
    
    
}



-(IBAction)Answer1:(id)sender{
    
    //////////////////////// Google Analytics for answer button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Game_test"
                                                          action:@"ButtonPress"
                                                           label:@"game_answer"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
   
    if (Answer1Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(IBAction)Answer2:(id)sender{
    
    //////////////////////// Google Analytics for answer button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Game_test"
                                                          action:@"ButtonPress"
                                                           label:@"game_answer"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    
    if (Answer2Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(IBAction)Answer3:(id)sender{
    
    //////////////////////// Google Analytics for answer button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Game_test"
                                                          action:@"ButtonPress"
                                                           label:@"game_answer"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    if (Answer3Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}
-(IBAction)Answer4:(id)sender{
    
    //////////////////////// Google Analytics for answer button press ////////////////
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"Game_test"
                                                          action:@"ButtonPress"
                                                           label:@"game_answer"
                                                           value:nil] build]];
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    if (Answer4Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(void)Category1{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT the guideline stated by IPENZ?"];
            [Answer1 setTitle:@"Report any possible risks involved in your engineering activities to the community" forState: UIControlStateNormal];
            [Answer2 setTitle:@"Give priority to the safety and well-being of the community" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ensure that the reasonable steps are taken to minimize the risk of loss of life, injury, and suffering" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Assess and take reasonable steps to minimize potential dangers involved in your engineering activities" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT the guideline stated by IPENZ?"];
            [Answer1 setTitle:@"Exercise your skills to the best of your ability for the benefit of your client" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Give honest engineering decisions and recommendations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Disclose your experience and competence to your employers before stat any engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Accept any personal responsibility for work done under your supervision" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
               default:
            break;
    }
    
    
}
-(void)Category2{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT the guideline stated by IPENZ?"];
            [Answer1 setTitle:@"Ensure that anyone working under your authority is competence for the assigned tasks" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Before reviewing other engineers’ works, inform their employers and clients" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Disclose any financial or other interest that may affect your professional judgement" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Do not promise to give or accept anything of substantial value by way of inducement" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT the guideline stated by IPENZ?"];
            [Answer1 setTitle:@"Give honest recommendations or opinion" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accept personal responsibility for work done by you or under your supervision" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Do not misrepresent your levels of experience or competence" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Do not provide engineering advice to more than one party" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
                default:
            break;
    }
    
    
}
-(void)Category3{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"IPENZ has guided that engineering should care for environment, which of the following is NOT mentioned in the guideline?"];
            [Answer1 setTitle:@"Minimize the generation of waste" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Avoid the use of green house gases" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Avoid or mitigate the engineering activities that adverse impact the environment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Use resource efficiently" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT the guideline stated by IPENZ?"];
            [Answer1 setTitle:@"Improve and update your understanding of your engineering" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Exchange knowledge with your professional colleagues" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Share your experience in particular about success and failure" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Obtain certificates that related to your engineering activities" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
    
    
}
-(void)Category4{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"WWhich of the following is NOT the guideline stated by IPENZ?"];
            [Answer1 setTitle:@"Endeavour to identify, inform, and consult anyone affected or likely to be affected by your engineering activities" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Use your engineering knowledge to contribute to community affair or debate" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ask for permission from the authority before start any engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Consider for the values and cultural sensitivities of all group within the community before undertake engineering activities" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In obligations to employers and clients, which of the following act is NOT mentioned in the minimum standards of ethical behavior?"];
            [Answer1 setTitle:@"You must disclose conflicts of interest if it is likely to affect your decision on any engineering activities" forState:UIControlStateNormal];
            [Answer2 setTitle:@"You must not disclose confidential information of clients without an agreement" forState:UIControlStateNormal];
            [Answer3 setTitle:@"You must not use another person’s confidential information for your own personal benefits" forState:UIControlStateNormal];
            [Answer4 setTitle:@"You must make an agreement that states your responsibilities with clients before undertake any engineering activities" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
    
}
-(void)Category5{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"In professional obligation, which of the following act is NOT mentioned in the minimum standards of ethical behavior?"];
            [Answer1 setTitle:@"If your clients do not accept your professional advise, you must inform them about possible risks and consequences" forState:UIControlStateNormal];
            [Answer2 setTitle:@"You must not misrepresent your membership status" forState:UIControlStateNormal];
            [Answer3 setTitle:@"You must not give any person anything that may improper influence their decisions related to your engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"You must seek for third parties or other members’ advices before you undertake any engineering activities that are not your competence" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following act is BEYOND MINIMUM STANDARDS of ethical behavior?"];
            [Answer1 setTitle:@"Disclose any confidential information of client if the information risk to safety of people" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Disclose any financial or other interest that may affect your judgement on any engineering activities to clients, and employers" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Analyze your competence and report it to clients and employers before undertake any engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Not use another person’s confidential information for your own personal benefit" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        default:
            break;
    }
    
}
-(void)Category6{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following act is BEYOND MINIMUM STANDARDS of ethical behavior?"];
            [Answer1 setTitle:@"Comment on other engineers’ work without inform them if the works immediate risk of damage to property" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Disclose clients’ confidential information if law requires it" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ask other IPENZ members to analyze your competence before undertake any engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Act honestly and with objectivity and integrity in the course of your engineering activities" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following act is BEYOND MINIMUM STANDARDS of ethical behavior when reviewing other engineers’ work?"];
            [Answer1 setTitle:@"Inform the other engineers, their clients, and IPENZ of the proposed review before start it" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Immediate review the other engineers’ works with inform them if the works is being harm to the health of people" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Investigate the matters concerned before comment on the other engineers’ works" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Immediate review the other engineers’ works without inform them if the works risk of damage the environment" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        default:
            break;
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
    self.screenName = @"Game";
    
    if (GameInProgress == NO) {
        LivesNumber = 3;
        ScoreNumber = 0;
        GameInProgress = YES;
    }
    
    
    Result.hidden = YES;
    Exit.hidden = YES;
    NextCategory.hidden = YES;
    
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    QuestionSelected = arc4random() %2;
    
    switch (CategoryLoaded) {
        case 1:
            CategorySelected.text = [NSString stringWithFormat:@"Code of Ethic Question Set 1"];
            [self Category1];
            break;
        case 2:
            CategorySelected.text = [NSString stringWithFormat:@"Code of Ethic Question Set 2"];
            [self Category2];
            break;
        case 3:
            CategorySelected.text = [NSString stringWithFormat:@"Code of Ethic Question Set 3"];
            [self Category3];
            break;
        case 4:
            CategorySelected.text = [NSString stringWithFormat:@"Code of Ethic Question Set 4"];
            [self Category4];
            break;
        case 5:
            CategorySelected.text = [NSString stringWithFormat:@"Code of Ethic Question Set 5"];
            [self Category5];
            break;
        case 6:
            CategorySelected.text = [NSString stringWithFormat:@"Code of Ethic Question Set 6"];
            [self Category6];
            break;
            
        default:
            break;
    }
    
    
    
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
@end
