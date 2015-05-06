//
//  EntryController.m
//  DayX
//
//  Created by Daniel Dayley on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()

@property (nonatomic, strong) NSArray *entries;

@end

@implementation EntryController


+ (EntryController *)sharedInstance
{
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        
        sharedInstance.entries = [NSArray new];
    });
    return sharedInstance;
}

- (void)addEntry:(Entry *)entry
{
    NSMutableArray  *mutableEntries = [[NSMutableArray alloc]initWithArray:self.entries];
    [mutableEntries addObject:entry];
    [EntryController sharedInstance].entries = mutableEntries;
}

- (void)removeEntry:(Entry *)entry
{
    NSMutableArray  *mutableEntries = [[NSMutableArray alloc]initWithArray:self.entries];
    [mutableEntries removeObject:entry];
    [EntryController sharedInstance].entries = mutableEntries;
}
- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString*)bodyText
{
    Entry *entry = [Entry new];
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timeStamp = [NSDate date];
    [self addEntry:entry];
    return entry;
}


@end
