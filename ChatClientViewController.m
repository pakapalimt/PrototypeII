//
//  ChatClientViewController.m
//  ChatClient
//
//  Created by Pakapan on 27/08/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import "ChatClientViewController.h"

@implementation ChatClientViewController

@synthesize joinView, chatView;
@synthesize inputStream, outputStream;
@synthesize inputNameField, inputMessageField;
@synthesize tView, messages;



- (void)viewDidLoad {

    self.screenName = @"Chat";
    
    [super viewDidLoad];
		
	[self initNetworkCommunication];
	
	inputNameField.text = @"";
	messages = [[NSMutableArray alloc] init];
	
	self.tView.delegate = self;
	self.tView.dataSource = self;
	
}

- (void) initNetworkCommunication {
	
	CFReadStreamRef readStream;
	CFWriteStreamRef writeStream;
	//CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"localhost", 80, &readStream, &writeStream);
    CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"barretts.ecs.vuw.ac.nz", 4567, &readStream, &writeStream);
    //CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"192.168.20.105", 4567, &readStream, &writeStream);
    inputStream = (__bridge NSInputStream *)readStream;
	outputStream = (__bridge NSOutputStream *)writeStream;
	inputStream.delegate = self;
	outputStream.delegate = self;
	[inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	[outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	[inputStream open];
	[outputStream open];
	
}

- (IBAction) joinChat {

	[self.view bringSubviewToFront:chatView];
	NSString *response  = [NSString stringWithFormat:@"iam:%@", inputNameField.text];
	NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
	[outputStream write:data.bytes maxLength:data.length];
	
}


- (IBAction) sendMessage {
	
	NSString *response  = [NSString stringWithFormat:@"msg:%@", inputMessageField.text];
	NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
	[outputStream write:data.bytes maxLength:data.length];
	inputMessageField.text = @"";
	
}



- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent {
		
	NSLog(@"stream event %i", streamEvent);
	
	switch (streamEvent) {
			
		case NSStreamEventOpenCompleted:
			NSLog(@"Stream opened");
			break;
		case NSStreamEventHasBytesAvailable:

			if (theStream == inputStream) {
				
				uint8_t buffer[1024];
				int len;
				
				while (inputStream.hasBytesAvailable) {
					len = [inputStream read:buffer maxLength:sizeof(buffer)];
					if (len > 0) {
						
						NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
						
						if (nil != output) {

							NSLog(@"server said: %@", output);
							[self messageReceived:output];
							
						}
					}
				}
			}
			break;

			
		case NSStreamEventErrorOccurred:
			
			NSLog(@"Can not connect to the host!");
			break;
			
		case NSStreamEventEndEncountered:

            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            theStream = nil;
			
			break;
		default:
			NSLog(@"Unknown event");
	}
		
}

- (void) messageReceived:(NSString *)message {
	
	[self.messages addObject:message];
	[self.tView reloadData];
	NSIndexPath *topIndexPath = [NSIndexPath indexPathForRow:messages.count-1 
												   inSection:0];
	[self.tView scrollToRowAtIndexPath:topIndexPath 
					  atScrollPosition:UITableViewScrollPositionMiddle 
							  animated:YES];

}

#pragma mark -
#pragma mark Table delegates

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *s = (NSString *) messages[indexPath.row];
	
    static NSString *CellIdentifier = @"ChatCellIdentifier";
    
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	
	cell.textLabel.text = s;
    
    // Adjust cell in table view by Lili //
    
    cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.font=[UIFont fontWithName: @"Arial" size:15.0];
    //cell.textLabel.textColor=[UIColor colorWithRed:0 green:100 blue:100 alpha:1];
    
	
	return cell;
	
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return messages.count;
}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



@end
