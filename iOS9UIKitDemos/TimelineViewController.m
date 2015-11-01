//
//  TimelineViewController.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "TimelineViewController.h"
#import "TimelineCell.h"
#import "TimelineItem.h"

@interface TimelineViewController ()

@property (nonatomic) NSArray *items;

@end

@implementation TimelineViewController

#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setup];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TimelineCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                          forIndexPath:indexPath];
    cell.item = self.items[indexPath.row];
    [cell updateComponents];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Private

- (void)setup
{
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44.0f;
    
    TimelineItem *item1 = [TimelineItem new];
    item1.profileImage = [UIImage imageNamed:@"profile"];
    item1.title = @"Moscone West";
    item1.mainText = @"WWDC 2015 was held June 8th through 12th in the Moscone West conference center.";
    item1.mainImage = [UIImage imageNamed:@"1200-1200"];
    
    // mainImage is nil
    TimelineItem *item2 = [TimelineItem new];
    item2.profileImage = [UIImage imageNamed:@"profile"];
    item2.title = @"Moscone Center";
    item2.mainText = @"Banners are up on the side of the Metreon building.";
    item2.mainImage = nil;
    
    TimelineItem *item3 = [TimelineItem new];
    item3.profileImage = [UIImage imageNamed:@"profile"];
    item3.title = @"Apple Campus";
    item3.mainText = @"The Apple Campus is the headquarters of Apple Inc.\n1 Infinite Loop, Cupertino, CA 95014";
    item3.mainImage = [UIImage imageNamed:@"1600-1200"];
    
    TimelineItem *item4 = [TimelineItem new];
    item4.profileImage = [UIImage imageNamed:@"profile"];
    item4.title = @"Moscone Center";
    item4.mainText = @"Banners are up on the side of the Metreon building.";
    item4.mainImage = [UIImage imageNamed:@"900-1200"];
    
    // mainText is nil
    TimelineItem *item5 = [TimelineItem new];
    item5.profileImage = [UIImage imageNamed:@"profile"];
    item5.title = @"Moscone West";
    item5.mainText = nil;
    item5.mainImage = [UIImage imageNamed:@"1200-1200"];
    
    self.items = @[ item1, item2, item3, item4, item5 ];
}

@end
