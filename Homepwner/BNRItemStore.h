//
//  BNRItemStore.h
//  Homepwner
//
//  Created by jfl913 on 13-10-3.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}

+ (BNRItemStore *)sharedStore;
- (NSArray *)allItems;
- (BNRItem *)createItem;
- (void)removeItem:(BNRItem *)item;
- (void)moveItem:(NSInteger)from toItem:(NSInteger)to;

@end
