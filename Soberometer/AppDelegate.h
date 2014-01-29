//
//  AppDelegate.h
//  Soberometer
//
//  Created by Sujit Anand on 12/12/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    MainViewController *mvc;
}

@property (strong, nonatomic) UIWindow *window;

@end
