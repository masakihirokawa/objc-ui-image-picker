//
//  ViewController.h
//  UIImagePickerSample
//
//  Created by 廣川政樹 on 2013/03/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

//デリゲートに UIImagePickerControllerDelegateと UINavigationControllerDelegateを指定
@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

//カメラで撮った写真を表示する UIImageView
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

//撮影ボタン
- (IBAction)showImagePicker:(id)sender;

@end
