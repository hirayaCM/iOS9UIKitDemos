//
//  TimelineCell.h
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimelineItem;

@interface TimelineCell : UITableViewCell

@property (nonatomic) TimelineItem *item;

- (void)updateComponents;

@end
