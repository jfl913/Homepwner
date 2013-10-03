//
//  BNRItem.h
//  RandomPossessions
//
//  Created by jfl913 on 13-8-26.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
}

+ (id)randomItem;

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serailNumber:(NSString *)sNumber;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;




@end
