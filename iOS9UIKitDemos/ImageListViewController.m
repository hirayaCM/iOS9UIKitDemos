//
//  ImageListViewController.m
//  iOS9UIKitDemos
//
//  Created by Shingo Hiraya on 2015/11/02.
//  Copyright © 2015年 Shingo Hiraya. All rights reserved.
//

#import "ImageListViewController.h"
#import "ImageListViewCell.h"

@interface ImageListViewController ()

@property (nonatomic) NSArray *images;

@end

@implementation ImageListViewController

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
    return self.images.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ImageListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                              forIndexPath:indexPath];
    cell.image = self.images[indexPath.row];
    [cell updateComponents];
    
    return cell;
}

#pragma mark - Private

- (void)setup
{
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44.0f;
    
    self.images = @[
                    [UIImage imageNamed:@"1200-1200"],
                    [UIImage imageNamed:@"900-1200"],
                    [UIImage imageNamed:@"1600-1200"]
                    ];
}

@end
