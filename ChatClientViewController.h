//
//  ChatClientViewController.h
//  ChatClient
//
//  Created by Pakapan on 27/08/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GAITrackedViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAITracker.h"

@interface ChatClientViewController : GAITrackedViewController <NSStreamDelegate, UITableViewDelegate, UITableViewDataSource> {

	UIView			*joinView;
	UIView			*chatView;
	NSInputStream	*inputStream;
	NSOutputStream	*outputStream;
	UITextField		*inputNameField;	
	UITextField		*inputMessageField;
	UITableView		*tView;
	NSMutableArray	*messages;
	
}


@property (nonatomic, strong) IBOutlet UIView *joinView;
@property (nonatomic, strong) IBOutlet UIView *chatView;

@property (nonatomic, strong) NSInputStream *inputStream;
@property (nonatomic, strong) NSOutputStream *outputStream;

@property (nonatomic, strong) IBOutlet UITextField	*inputNameField;
@property (nonatomic, strong) IBOutlet UITextField	*inputMessageField;

@property (nonatomic, strong) IBOutlet UITableView	*tView;
@property (nonatomic, strong) NSMutableArray *messages;

- (IBAction) joinChat;
- (void) initNetworkCommunication;
- (IBAction) sendMessage;
- (void) messageReceived:(NSString *)message;

@end

