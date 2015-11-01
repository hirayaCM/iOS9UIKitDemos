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

@end

@implementation ImageListViewCell

- (void)updateConstraints
{
    CGFloat imageRatio = self.image.size.height / self.image.size.width;
    CGFloat imageViewHeight = floorf(self.bounds.size.width * imageRatio);
    
    // Change heightAnchor
    [self.photoImageView.heightAnchor constraintEqualToConstant:imageViewHeight].active = YES;
    
    [super updateConstraints];
}

- (void)updateComponents
{
    self.photoImageView.image = self.image;
    
    [self setNeedsUpdateConstraints];
}

@end
