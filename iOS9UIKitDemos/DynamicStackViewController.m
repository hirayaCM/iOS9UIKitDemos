//
//  DynamicStackViewController.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "DynamicStackViewController.h"

@interface DynamicStackViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *stackView;

@end

@implementation DynamicStackViewController

#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action


- (IBAction)changeAxisButtonDidTouch:(id)sender
{
    [UIView animateWithDuration:0.25 animations:^{
        
        // Toggle between a vertical and horizontal stack
        if (self.stackView.axis == UILayoutConstraintAxisHorizontal) {
            self.stackView.axis = UILayoutConstraintAxisVertical;
        }
        else {
            self.stackView.axis = UILayoutConstraintAxisHorizontal;
        }
    }];
}

- (IBAction)addButtonDidTouch:(id)sender
{
    [self.stackView insertArrangedSubview:self.randomView
                                  atIndex:0];
    
    // animate
    [UIView animateWithDuration:0.25 animations:^{
        [self.stackView layoutIfNeeded];
    }];
}

- (IBAction)removeButtonDidTouch:(id)sender
{
    if (self.stackView.arrangedSubviews.count < 1) {
        return;
    }
    
    UIView *firstView = self.stackView.arrangedSubviews.firstObject;
    [self.stackView removeArrangedSubview:firstView];
    [firstView removeFromSuperview];
    
    // animate
    [UIView animateWithDuration:0.25 animations:^{
        [self.stackView layoutIfNeeded];
    }];
}

#pragma mark - Private

- (UIView *)randomView
{
    UIView *view = [UIView new];
    view.backgroundColor = self.randomColor;
    
    return view;
}

- (UIColor *)randomColor
{
    NSArray *colors = @[
                        @0xf39c12,
                        @0x1abc9c,
                        @0x2980b9,
                        @0xf1c40f,
                        @0x3498db,
                        @0x9b59b6,
                        @0xe74c3c,
                        @0xe67e22,
                        @0x2ecc71,
                        @0x34495e
                        ];
    
    u_int32_t dataIndex = arc4random_uniform((u_int32_t)colors.count);
    NSNumber *colorNnumber = colors[dataIndex];
    return [self colorWithRGBHex:colorNnumber.integerValue];
}

- (UIColor *)colorWithRGBHex:(NSUInteger)hex
{
    return [UIColor colorWithRed:((hex & 0xFF0000) >> 16) / 255.0f
                           green:((hex & 0x00FF00) >>  8) / 255.0f
                            blue:((hex & 0x0000FF) >>  0) / 255.0f
                           alpha:1.0f];
}

@end
