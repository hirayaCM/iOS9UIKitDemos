//
//  TimelineCell.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "TimelineCell.h"
#import "TimelineItem.h"

@interface TimelineCell ()

@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *mainTextLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;

@end

@implementation TimelineCell

#pragma mark - Public

- (void)updateComponents
{
    self.profileImageView.image = self.item.profileImage;
    self.mainImageView.image = self.item.mainImage;
    self.titleLabel.text = self.item.title;
    self.mainTextLabel.text = self.item.mainText;
}

@end
