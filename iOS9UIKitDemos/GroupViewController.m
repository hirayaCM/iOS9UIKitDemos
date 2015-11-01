//
//  GroupViewController.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "GroupViewController.h"

@interface GroupViewController ()

@end

@implementation GroupViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *titleLabel = [UILabel new];
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.text = @"Title";
    titleLabel.font = [UIFont systemFontOfSize:27.0f];
    [self.view addSubview:titleLabel];
    
    UILabel *bodyLabel = [UILabel new];
    bodyLabel.translatesAutoresizingMaskIntoConstraints = NO;
    bodyLabel.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    bodyLabel.numberOfLines = 0;
    [self.view addSubview:bodyLabel];
    
    UILayoutGuide *group = [UILayoutGuide new];
    [self.view addLayoutGuide:group];
    
    
    // titleLabel
    [titleLabel.topAnchor constraintEqualToAnchor:group.topAnchor].active = YES;
    [titleLabel.heightAnchor constraintEqualToConstant:27.0f].active = YES;
    [titleLabel.centerXAnchor constraintEqualToAnchor:group.centerXAnchor].active = YES;

    // bodyLabel
    [bodyLabel.leadingAnchor constraintEqualToAnchor:group.leadingAnchor].active = YES;
    [bodyLabel.trailingAnchor constraintEqualToAnchor:group.trailingAnchor].active = YES;
    [bodyLabel.topAnchor constraintEqualToAnchor:titleLabel.bottomAnchor].active = YES;
    [bodyLabel.bottomAnchor constraintEqualToAnchor:group.bottomAnchor].active = YES;
    
    // group
    [group.widthAnchor constraintEqualToConstant:260.0f].active = YES;
    [group.heightAnchor constraintEqualToConstant:220.0f].active = YES;
    [group.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [group.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
