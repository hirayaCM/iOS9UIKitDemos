//
//  ImageListViewCell.h
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageListViewCell : UITableViewCell

@property (nonatomic) UIImage *image;

- (void)updateComponents;

@end
