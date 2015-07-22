//
//  zoom.h
//  prototypeII
//
//  Created by Pakapan on 23/04/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface zoom : UIViewController

- (IBAction)pinch:(UIGestureRecognizer *)sender;
@property (strong, nonatomic) IBOutlet UITextView *textview;


@end
