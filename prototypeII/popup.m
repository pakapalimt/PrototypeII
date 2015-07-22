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


/////////////////////////HERE is my Code //////////////////////////

-(IBAction)information1
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall regcognise the need to protect life and to safeguard people, and in their engineering activities shall act to address this need" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}

-(IBAction)information2
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall regcognise the responsibility of the profession to actively contribute to the well-being of society and, when involved in any engineering activity shall endeavour to identify, inform and consult affected parties" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}

-(IBAction)information3
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall understake their engineering activities with profesionalism and integrity and shall work within their levels of competence" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}

-(IBAction)information4
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Explanation" message:@"Member shall regcognise and respect the need for sustainable management of the planet's resource and endeavour to minimise adverse environmental impacts of their engineering activities for present and future generations" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    
    [alert show];}

-(IBAction)information5
{
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
