//
//  DetailViewController.m
//  Homepwner
//
//  Created by jfl913 on 13-10-14.
//  Copyright (c) 2013年 jfl913. All rights reserved.
//

#import "DetailViewController.h"
#import "BNRItem.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[self view] endEditing:YES];
    
    [nameField setText:[_item itemName]];
    [serialNumField setText:[_item serialNumber]];
    [valueField setText:[NSString stringWithFormat:@"%d", [_item valueInDollars]]];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [dateLabel setText:[dateFormatter stringFromDate:[_item dateCreated]]];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [_item setItemName:[nameField text]];
    [_item setSerialNumber:[serialNumField text]];
    [_item setValueInDollars:[[valueField text] intValue]];
}

- (void)setItem:(BNRItem *)item
{
    _item = item;
    [[self navigationItem] setTitle:[_item itemName]];
}

- (IBAction)takePicture:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    }else{
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePickerController setDelegate:self];
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
