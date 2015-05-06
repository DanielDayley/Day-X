//
//  ViewController.m
//  DayX
//
//  Created by Caleb Hicks on 4/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"
#import "EntryController.h"
#import "DetailViewController.h"
#import "Entry.h"


@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
//    DetailViewController *example = [self.storyboard instantiateViewControllerWithIdentifier:@"id"];
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"addEntry"]) {
        DetailViewController *emptyEntry = [segue destinationViewController];
        emptyEntry.textField.text = @"";
        emptyEntry.textView.text = @""; //work on later
        
    }
    else if ([segue.identifier isEqualToString:@"viewEntry"]) {
        DetailViewController *oldEntry = [segue destinationViewController];
        NSIndexPath *path = self.tableView.indexPathForSelectedRow;
        Entry *entry = [EntryController sharedInstance].entries[path.row];
        oldEntry.entry = entry;
       
    }
}

@end
