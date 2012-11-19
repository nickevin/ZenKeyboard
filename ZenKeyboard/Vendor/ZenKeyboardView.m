//
//  ZenKeyboardView.m
//  ZenKeyboard
//
//  Created by Kevin Nick on 2012-11-9.
//  Copyright (c) 2012年 com.zen. All rights reserved.
//

#import "ZenKeyboardView.h"

@implementation ZenKeyboardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame]; 
    if (self) {        
        UIImageView *keyboardBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"KeyboardBackgroundTextured"]];
        
        UIImageView *keyboardGridLines = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"KeyboardNumericEntryViewGridLinesTextured"]];
        
        UIImageView *keyboardShadow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"KeyboardTopShadow"]];
        
        [self addSubview:keyboardBackground];
        [self addSubview:keyboardGridLines];
        [self addSubview:[self addNumericKeyWithTitle:@"1" frame:CGRectMake(0, 1, KeyboardNumericKeyWidth - 3, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"2" frame:CGRectMake(KeyboardNumericKeyWidth - 2, 1, KeyboardNumericKeyWidth, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"3" frame:CGRectMake(KeyboardNumericKeyWidth * 2 - 1, 1, KeyboardNumericKeyWidth - 2, KeyboardNumericKeyHeight)]];
        
        [self addSubview:[self addNumericKeyWithTitle:@"4" frame:CGRectMake(0, KeyboardNumericKeyHeight + 2, KeyboardNumericKeyWidth - 3, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"5" frame:CGRectMake(KeyboardNumericKeyWidth - 2, KeyboardNumericKeyHeight + 2, KeyboardNumericKeyWidth, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"6" frame:CGRectMake(KeyboardNumericKeyWidth * 2 - 1, KeyboardNumericKeyHeight + 2, KeyboardNumericKeyWidth - 3, KeyboardNumericKeyHeight)]];

        [self addSubview:[self addNumericKeyWithTitle:@"7" frame:CGRectMake(0, KeyboardNumericKeyHeight * 2 + 3, KeyboardNumericKeyWidth - 3, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"8" frame:CGRectMake(KeyboardNumericKeyWidth - 2, KeyboardNumericKeyHeight * 2 + 3, KeyboardNumericKeyWidth , KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"9" frame:CGRectMake(KeyboardNumericKeyWidth * 2 - 1, KeyboardNumericKeyHeight * 2 + 3, KeyboardNumericKeyWidth, KeyboardNumericKeyHeight)]];

        [self addSubview:[self addNumericKeyWithTitle:@"." frame:CGRectMake(0, KeyboardNumericKeyHeight * 3 + 4, KeyboardNumericKeyWidth - 3, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addNumericKeyWithTitle:@"0" frame:CGRectMake(KeyboardNumericKeyWidth - 2, KeyboardNumericKeyHeight * 3 + 4, KeyboardNumericKeyWidth, KeyboardNumericKeyHeight)]];
        [self addSubview:[self addBackspaceKeyWithFrame:CGRectMake(KeyboardNumericKeyWidth * 2 - 1, KeyboardNumericKeyHeight * 3 + 4, KeyboardNumericKeyWidth - 3, KeyboardNumericKeyHeight)]];
        
        [self addSubview:keyboardShadow];
    }
    
    return self;
}

- (UIButton *)addNumericKeyWithTitle:(NSString *)title frame:(CGRect)frame {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:28.0]];
    
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [button setTitleShadowColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [button setTitleShadowColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
    [button.titleLabel setShadowOffset:CGSizeMake(0, -0.5)];
    
    UIImage *buttonImage = [UIImage imageNamed:@"KeyboardNumericEntryKeyTextured"];
    UIImage *buttonPressedImage = [UIImage imageNamed:@"KeyboardNumericEntryKeyPressedTextured"];
    [button setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [button setBackgroundImage:buttonPressedImage forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(pressNumericKey:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

- (UIButton *)addBackspaceKeyWithFrame:(CGRect)frame {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    UIImage *buttonImage = [UIImage imageNamed:@"KeyboardNumericEntryKeyTextured"];
    UIImage *buttonPressedImage = [UIImage imageNamed:@"KeyboardNumericEntryKeyPressedTextured"];
    UIImage *image = [UIImage imageNamed:@"KeyboardNumericEntryKeyBackspaceGlyphTextured"];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((buttonImage.size.width - image.size.width) / 2, (buttonImage.size.height - image.size.height) / 2, image.size.width, image.size.height)];
    imgView.image = image;
    [button addSubview:imgView];
    [button setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [button setBackgroundImage:buttonPressedImage forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(pressBackspaceKey) forControlEvents:UIControlEventTouchUpInside];

    return button;
}

- (void)pressNumericKey:(UIButton *)button {
    [self.delegate didNumericKeyPressed:button];
}

- (void)pressBackspaceKey {
    [self.delegate didBackspaceKeyPressed];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
