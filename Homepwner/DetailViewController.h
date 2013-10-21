//
//  DetailViewController.h
//  Homepwner
//
//  Created by jfl913 on 13-10-14.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *serialNumField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UILabel *dateLabel;
    __weak IBOutlet UIImageView *imageView;
    
}

@property (nonatomic, strong) BNRItem *item;

- (IBAction)takePicture:(id)sender;
@end
