//
//  BNRImageStore.h
//  Homepwner
//
//  Created by jfl913 on 13-10-21.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRImageStore : NSObject
{
    NSMutableDictionary *dictionary;
}

+ (BNRImageStore *)sharedStore;

- (void)setImage:(UIImage *)image forKey:(NSString *)string;
- (UIImage *)imageForKey:(NSString *)string;
- (void)deleteImageForKey:(NSString *)string;

@end
