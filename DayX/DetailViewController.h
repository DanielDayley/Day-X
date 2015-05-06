//
//  DetailViewController.h
//  DayX
//
//  Created by Daniel Dayley on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EntryController.h"
#import "Entry.h"
@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) Entry *entry;

@end
