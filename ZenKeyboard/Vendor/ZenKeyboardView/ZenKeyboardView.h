//
//  ZenKeyboardView.h
//  ZenKeyboard
//
//  Created by Kevin Nick on 2012-11-9.
//  Copyright (c) 2012年 com.zen. All rights reserved.
//

#import <UIKit/UIKit.h>

#define KeyboardNumericKeyWidth 108
#define KeyboardNumericKeyHeight 53

@protocol ZenKeyboardViewDelegate <NSObject>

- (void)didNumericKeyPressed:(UIButton *)button;
- (void)didBackspaceKeyPressed;

@end

@interface ZenKeyboardView : UIView

@property(nonatomic, assign) id<ZenKeyboardViewDelegate> delegate;

@end
