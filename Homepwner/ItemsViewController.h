//
//  ItemsViewController.h
//  Homepwner
//
//  Created by jfl913 on 13-10-3.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemsViewController : UITableViewController
{
    IBOutlet UIView *headerView;
}

- (UIView *)headerView;
- (IBAction)addNewItem:(id)sender;
- (IBAction)toggleEditingMode:(id)sender;

@end
