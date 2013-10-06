//
//  ViewController.m
//  Determine_version_of_iOS
//
//  Created by navzou on 10/6/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self determineVersionOfIOS];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)determineVersionOfIOS
{
    NSString *iosVersion = [[[UIDevice currentDevice] systemVersion] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([iosVersion floatValue] > 6.0) {
        NSLog(@"iOS version 6 or higher");
    } else {
        NSLog(@"iOS version is less than 6");
    }

}

@end
