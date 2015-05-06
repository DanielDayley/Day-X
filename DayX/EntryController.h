//
//  EntryController.h
//  DayX
//
//  Created by Daniel Dayley on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"
@interface EntryController : NSObject

@property (nonatomic, strong, readonly) NSArray *entries;
- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;
- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString*)bodyText;


@end
