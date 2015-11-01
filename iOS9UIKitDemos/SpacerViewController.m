//
//  UsingUILayoutGuideViewController1.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "SpacerViewController.h"

@interface SpacerViewController ()

@end

@implementation SpacerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *leftView = [UIView new];
    leftView.backgroundColor = [UIColor redColor];
    leftView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:leftView];
    
    UIView *rightView = [UIView new];
    rightView.backgroundColor = [UIColor blueColor];
    rightView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:rightView];
    
    UILayoutGuide *spacer = [UILayoutGuide new];
    [self.view addLayoutGuide:spacer];
    
    // leftView
    [leftView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [leftView.trailingAnchor constraintEqualToAnchor:spacer.leadingAnchor].active = YES;
    [leftView.widthAnchor constraintEqualToAnchor:rightView.widthAnchor].active = YES;
    [leftView.heightAnchor constraintEqualToConstant:100.0f].active = YES;
    [leftView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    
    // rightView
    [rightView.leadingAnchor constraintEqualToAnchor:spacer.trailingAnchor].active = YES;
    [rightView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [rightView.topAnchor constraintEqualToAnchor:leftView.topAnchor].active = YES;
    [rightView.heightAnchor constraintEqualToAnchor:spacer.heightAnchor].active = YES;
    
    // spacer
    [spacer.topAnchor constraintEqualToAnchor:leftView.topAnchor].active = YES;
    [spacer.widthAnchor constraintEqualToConstant:50.0f].active = YES;
    [spacer.heightAnchor constraintEqualToAnchor:leftView.heightAnchor].active = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
