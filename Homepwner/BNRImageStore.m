//
//  BNRImageStore.m
//  Homepwner
//
//  Created by jfl913 on 13-10-21.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import "BNRImageStore.h"

@implementation BNRImageStore

+ (BNRImageStore *)sharedStore
{
    static BNRImageStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    
    return sharedStore;
}

- (id)init
{
    self = [super init];
    if (self) {
        dictionary = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (void)setImage:(UIImage *)image forKey:(NSString *)string
{
    [dictionary setObject:image forKey:string];
}
- (UIImage *)imageForKey:(NSString *)string
{
    return [dictionary objectForKey:string];
}
- (void)deleteImageForKey:(NSString *)string
{
    if (!string) {
        return;
    }
    
    [dictionary removeObjectForKey:string]; 
}

@end
