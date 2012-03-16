//
//  CBAppDelegate.h
//  iOS 5.1 Bug Test
//
//  Created by Chris Brauchli on 3/14/12.
//  Copyright (c) 2012 Chris Brauchli. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CBViewController;

@interface CBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CBViewController *viewController;

@end
