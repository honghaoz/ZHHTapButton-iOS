//
//  ViewController.m
//  ZHHTapButtonDemo
//
//  Created by Honghao on 7/30/14.
//  Copyright (c) 2014 org-honghao. All rights reserved.
//

#import "ViewController.h"
#import "ZHHTapButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIColor *background = [UIColor colorWithRed:0.73 green:0.03 blue:0.10 alpha:1];
    [self.view setBackgroundColor:background];
    
    CGSize mainSize = self.view.frame.size;
    
    
    ZHHTapButton *tapButton = [[ZHHTapButton alloc] initWithFrame:CGRectMake((mainSize.width - 150) / 2, 50, 150, 150) circleWidth:10 buttonColor:[UIColor whiteColor] circleColor:[UIColor whiteColor]];
    [self.view addSubview:tapButton];
    
    
    ZHHTapButton *tapButtonWithText = [[ZHHTapButton alloc] initWithFrame:CGRectMake((mainSize.width - 150) / 2, 50 + 150 + 20, 150, 150) circleWidth:10 buttonColor:[UIColor blackColor] circleColor:[UIColor blackColor]];
    [tapButtonWithText setTitle:@"Tap" forState:UIControlStateNormal];
    [tapButtonWithText.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:35]];
    [tapButtonWithText setTitleColor:background forState:UIControlStateNormal];
    [tapButtonWithText setTitleColor:background forState:UIControlStateHighlighted];
    
    [self.view addSubview:tapButtonWithText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
