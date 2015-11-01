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
    
    UIButton *fooButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [fooButton setTitle:@"foo" forState:UIControlStateNormal];
    fooButton.titleLabel.font = [UIFont systemFontOfSize:20.0f];
    fooButton.layer.borderColor = fooButton.tintColor.CGColor;
    fooButton.layer.borderWidth = 1.0f;
    fooButton.layer.cornerRadius = 4.0f;
    fooButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:fooButton];
    
    UIButton *barButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [barButton setTitle:@"bar" forState:UIControlStateNormal];
    barButton.titleLabel.font = [UIFont systemFontOfSize:20.0f];
    barButton.layer.borderColor = fooButton.tintColor.CGColor;
    barButton.layer.borderWidth = 1.0f;
    barButton.layer.cornerRadius = 4.0f;
    barButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:barButton];
    
    UILayoutGuide *spacer1 = [UILayoutGuide new];
    [self.view addLayoutGuide:spacer1];
    
    UILayoutGuide *spacer2 = [UILayoutGuide new];
    [self.view addLayoutGuide:spacer2];
    
    UILayoutGuide *spacer3 = [UILayoutGuide new];
    [self.view addLayoutGuide:spacer3];
    
    // fooButton
    [fooButton.leadingAnchor constraintEqualToAnchor:spacer1.trailingAnchor].active = YES;
    [fooButton.trailingAnchor constraintEqualToAnchor:spacer2.leadingAnchor].active = YES;
    [fooButton.heightAnchor constraintEqualToConstant:44.0f].active = YES;
    [fooButton.widthAnchor constraintEqualToAnchor:barButton.widthAnchor].active = YES;
    [fooButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    
    // barButton
    [barButton.leadingAnchor constraintEqualToAnchor:spacer2.trailingAnchor].active = YES;
    [barButton.trailingAnchor constraintEqualToAnchor:spacer3.leadingAnchor].active = YES;
    [barButton.heightAnchor constraintEqualToAnchor:fooButton.heightAnchor].active = YES;
    [barButton.topAnchor constraintEqualToAnchor:fooButton.topAnchor].active = YES;
    
    // spacer1
    [spacer1.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [spacer1.topAnchor constraintEqualToAnchor:fooButton.topAnchor].active = YES;
    [spacer1.widthAnchor constraintEqualToConstant:50.0f].active = YES;
    [spacer1.heightAnchor constraintEqualToAnchor:fooButton.heightAnchor].active = YES;
    
    // spacer2
    [spacer2.topAnchor constraintEqualToAnchor:spacer1.topAnchor].active = YES;
    [spacer2.widthAnchor constraintEqualToAnchor:spacer1.widthAnchor].active = YES;
    [spacer2.heightAnchor constraintEqualToAnchor:spacer1.heightAnchor].active = YES;
    
    // spacer3
    [spacer3.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [spacer3.topAnchor constraintEqualToAnchor:spacer1.topAnchor].active = YES;
    [spacer3.widthAnchor constraintEqualToAnchor:spacer1.widthAnchor].active = YES;
    [spacer3.heightAnchor constraintEqualToAnchor:spacer1.heightAnchor].active = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
