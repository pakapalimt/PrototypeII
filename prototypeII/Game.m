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
    
    if (Answer1Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(IBAction)Answer2:(id)sender{
    
    if (Answer2Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(IBAction)Answer3:(id)sender{
    
    if (Answer3Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}
-(IBAction)Answer4:(id)sender{
    
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
            QuestionText.text = [NSString stringWithFormat:@"What does IPENZ stand for?"];
            [Answer1 setTitle:@"Integration Plan for Engineers in New Zealand" forState: UIControlStateNormal];
            [Answer2 setTitle:@"Integrated Program for Engineers in New Zealand" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Institution of Professional Engineers New Zealand" forState:UIControlStateNormal];
            [Answer4 setTitle:@"International Practices of Engineers New Zealand" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is one of the five fundamental ethical values given by IPENZ?"];
            [Answer1 setTitle:@"Protection of life and safeguarding people" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Respecting other engineers" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Being a part of engineering community" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Protection and respecting intellectual property  " forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
               default:
            break;
    }
    
    
}
-(void)Category2{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following are NOT the values of the codes of ethics?"];
            [Answer1 setTitle:@"Members shall develop their own engineering’s knowledge" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Member shall work within their levels of competence" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Member shall pursue a professional engineering certificate" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Member shall recognize the need for sustainable management of the planet’s resource" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is the obligation owed to other engineers?"];
            [Answer1 setTitle:@"Member shall inform the other engineers before reviewing their works" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Member DOES NOT need to inform other engineers’ work before reviewing their works if it is immediate risk to people health" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Member shall investigate the matters concerned before commenting on other engineers’ works" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
                default:
            break;
    }
    
    
}
-(void)Category3{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is NOT the general obligation to society?"];
            [Answer1 setTitle:@"Have regard to effects on environment" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Takes reasonable steps to safeguard health and safety" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Act with honest, objectivity, and integrity" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Not disclose confidential information of a client to society" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is the obligation to employers and clients?"];
            [Answer1 setTitle:@"Not disclose confidential information" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Not misuse confidential information for personal benefit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Disclose conflicts of interest" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
    
    
}
-(void)Category4{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT the guideline of the code Sustaining Engineering Knowledge?"];
            [Answer1 setTitle:@"Sharing public domain engineering knowledge with other engineers" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Contributing to the collective wisdom of the profession" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Drawing the attention of world wide engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sharing information about your experiences wherever possible" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following consequence is considered as significant important which engineers must inform and advice?"];
            [Answer1 setTitle:@"Effects on health or safety of people" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Damage to property" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Damage to the environment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        default:
            break;
    }
    
    
}
-(void)Category5{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following statement is inappropriate performance by members?"];
            [Answer1 setTitle:@"Members may disclose confidential information of client if the information harms safety of people" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Member may review and comment on other engineers’ work without informing them upon client’s request" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Members shall undertake engineering activities only within his or her competence" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Members must offer his or her professional advice if there are risks of significant damage to the environment" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following members must NOT perform?"];
            [Answer1 setTitle:@"Misrepresent his or her competence" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accept anything of substantial value intend to improperly influence his or her professional engineering decisions" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Give anything of substantial value intend to benefits members’ engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above " forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
}
-(void)Category6{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is one of the five codes of ethics?"];
            [Answer1 setTitle:@"Sustainable Management and Care for the Environment" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Commitment to Engineering Community Activities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Protection of nation economy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Preventing risk of people health" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is UNACCEPTABLE performance by members"];
            [Answer1 setTitle:@"Members comments on other engineers’ works without informing them because the works immediate risk of damage to the environment" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Members disclose confidential information if it is required by law" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Members misrepresent his or her competence for the highest benefits of engineering activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Members act honestly and with objectivity and integrity in his or her engineering activities" forState:UIControlStateNormal];
            Answer2Correct = YES;
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

@end
