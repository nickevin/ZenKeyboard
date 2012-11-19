//
//  MainViewController.h
//  ZenKeyboard
//
//  Created by Kevin Nick on 2012-11-19.
//  Copyright (c) 2012年 com.zen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <ZenKeyboardViewDelegate, UITextFieldDelegate>

@property (nonatomic, strong) ZenKeyboardView *keyboardView;
@property (nonatomic, strong) UITextField *tfIncome;

@end
