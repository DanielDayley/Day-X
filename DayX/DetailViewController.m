//
//  DetailViewController.m
//  DayX
//
//  Created by Daniel Dayley on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)clearButtonTapped:(id)sender {
    self.textField.text = @"";
    self.textView.text = @"";
}
- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        self.entry.title = self.textField.text;
        self.entry.bodyText = self.textView.text;
    }
    else{
        [[EntryController sharedInstance] createEntryWithTitle:self.textField.text bodyText:self.textView.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.textField.text = self.entry.title;
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
