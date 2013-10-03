//
//  BNRItem.m
//  RandomPossessions
//
//  Created by jfl913 on 13-8-26.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
@synthesize itemName;
@synthesize serialNumber, valueInDollars, dateCreated, containedItem, container;

+ (id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                    @"Rusty",
                                    @"Shiny",nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                               @"Spork",
                               @"Mac",nil];
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serailNumber:randomSerialNumber];
    
    return newItem;
}

- (id)init
{
    return [self initWithItemName:@"Item"
                   valueInDollars:0
                     serailNumber:@""];
}

- (id)initWithItemName: (NSString *)name
        valueInDollars: (int)value
          serailNumber: (NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }

    return self;
}

- (void)setContainedItem:(BNRItem *)i
{
    containedItem = i;
    [i setContainer:self];
}

- (NSString *)description
{
    NSString *descriptionString = [NSString stringWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}

- (void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}

@end
