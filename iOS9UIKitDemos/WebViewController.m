//
//  WebViewController.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "WebViewController.h"

@import WebKit;

@interface WebViewController ()

@property (strong, nonatomic) WKWebView *webView;

@end

@implementation WebViewController

#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView = [WKWebView new];
    
    [self.view addSubview:self.webView];
    
    [self setupConstraints];
    
    // load web page
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"]];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupConstraints
{
    // When you elect to position the view using auto layout by adding your own constraints,
    // you must set this property to NO. IB will do this for you.
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Creating constraints using Layout Anchors
    [self.webView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.webView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [self.webView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.webView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    
    /*
    // Creating constraints using NSLayoutConstraint
    [NSLayoutConstraint constraintWithItem:self.webView
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeading
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.webView
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.webView
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.webView
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0.0].active = YES;
     */
}

@end
