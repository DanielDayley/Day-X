//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Monica Platt on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"


@implementation ListTableViewDataSource


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell"];
    cell.textLabel.text = [NSString stringWithFormat: @"Entry %ld", (long)indexPath.row+1];
    

    return cell;
}


@end
