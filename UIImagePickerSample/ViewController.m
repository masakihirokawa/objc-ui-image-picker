//
//  ViewController.m
//  UIImagePickerSample
//
//  Created by 廣川政樹 on 2013/03/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

//撮影ボタンが押された時の動作
- (IBAction)showImagePicker:(id)sender {
  UIImagePickerControllerSourceType sourceType
  = UIImagePickerControllerSourceTypeCamera;
  if ([UIImagePickerController isSourceTypeAvailable:sourceType]) {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = sourceType;
    picker.delegate = self;
    [self presentViewController:picker animated:YES completion:NULL];
  }
}

//撮影後にイメージを表示
- (void)imagePickerController:(UIImagePickerController *)picker disFinishPickingMediaWithInfo:(NSDictionary *)info
{
  UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
  [self dismissViewControllerAnimated:YES completion:^{
    self.imageView.image =image;
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
  }];
}

@end
