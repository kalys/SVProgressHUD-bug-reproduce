//
//  ViewController.m
//  ololo
//
//  Created by Kalys Osmonov on 1/29/15.
//  Copyright (c) 2015 Kalys Osmonov. All rights reserved.
//

#import "ViewController.h"
#import <SVProgressHUD/SVProgressHUD.h>

@interface ViewController ()
- (IBAction)ololoTap:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ololo:) name:SVProgressHUDDidReceiveTouchEventNotification object:nil];
}

- (void) ololo:(NSNotification *)notification {
    [SVProgressHUD dismiss];
}

- (IBAction)ololoTap:(id)sender {
    // if you comment out the next line
    // SVProgressHUDDidReceiveTouchEventNotification won't fire
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    
    [SVProgressHUD showErrorWithStatus:@"ololo" maskType:SVProgressHUDMaskTypeClear];
}
@end
