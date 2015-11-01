//
//  ImageListViewCell.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "ImageListViewCell.h"

@interface ImageListViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@property (nonatomic) NSLayoutConstraint *heightConstraint;

@end

@implementation ImageListViewCell

- (void)updateConstraints
{
    if (self.heightConstraint) {
        self.heightConstraint.active = NO;
    }

    CGFloat imageRatio = self.image.size.height / self.image.size.width;
    CGFloat imageViewHeight = floorf(self.bounds.size.width * imageRatio);
    
    // Change heightAnchor
    self.heightConstraint = [self.photoImageView.heightAnchor constraintEqualToConstant:imageViewHeight];
    self.heightConstraint.active = YES;
    
    [super updateConstraints];
}

- (void)updateComponents
{
    self.photoImageView.image = self.image;
    
    [self setNeedsUpdateConstraints];
}

@end
