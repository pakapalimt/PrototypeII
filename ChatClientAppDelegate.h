//
//  ChatClientAppDelegate.h
//  ChatClient
//
//  Created by Pakapan on 27/08/15.
//  Copyright (c) 2015 Pakapan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChatClientViewController;

@interface ChatClientAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ChatClientViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet ChatClientViewController *viewController;

@end

