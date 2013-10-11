//
//  BNRItemStore.m
//  Homepwner
//
//  Created by jfl913 on 13-10-3.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore) {
        // 这里调用父类是为了避免无限循环
        sharedStore = [[super allocWithZone:nil] init];
    }
    
    return sharedStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray *)allItems
{
    return allItems;
}

- (BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    [allItems addObject:item];
    return item;
}

- (void)removeItem:(BNRItem *)item
{
    [allItems removeObjectIdenticalTo:item];
}

- (void)moveItem:(NSInteger)from toItem:(NSInteger)to
{
    if (from == to) {
        return;
    }
    BNRItem *item = [allItems objectAtIndex:from];
    [allItems removeObjectAtIndex:from];
    [allItems insertObject:item atIndex:to];
}

@end
