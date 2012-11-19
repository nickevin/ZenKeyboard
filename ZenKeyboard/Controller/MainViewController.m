//
//  MainViewController.m
//  ZenKeyboard
//
//  Created by Kevin Nick on 2012-11-19.
//  Copyright (c) 2012年 com.zen. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setUI];
}

- (void)setUI {
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIImage * backgroundImage = [UIImage imageNamed:@"BackgroundTexture"];
    UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, screenHeight)];
    backgroundView.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    _keyboardView = [[ZenKeyboardView alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
    _keyboardView.delegate = self;
    
    _tfIncome = [[UITextField alloc] initWithFrame:CGRectMake(15, 5, 290, 60)];
    [_tfIncome setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:55.0f]];
    _tfIncome.textColor = RGB(104, 114, 121);
    _tfIncome.textAlignment = UITextAlignmentRight;
    _tfIncome.adjustsFontSizeToFitWidth = YES;
    _tfIncome.text = @"8900.00";
    _tfIncome.inputView = _keyboardView;
    
    [self.view addSubview:backgroundView];
    [self.view addSubview:_tfIncome];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [_tfIncome becomeFirstResponder];
}

#pragma mark - ZenKeyboardViewDelegate

- (void)didNumericKeyPressed:(UIButton *)button {
    _tfIncome.text = [NSString stringWithFormat:@"%@%@", _tfIncome.text, button.titleLabel.text];
}

- (void)didBackspaceKeyPressed {
    NSInteger length = _tfIncome.text.length;
    if (length == 0) {
        _tfIncome.text = @"";
        
        return;
    }
    
    NSString *substring = [_tfIncome.text substringWithRange:NSMakeRange(0, length - 1)];
    _tfIncome.text = substring;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    self.keyboardView = nil;
    self.tfIncome = nil;
    [super viewDidUnload];
}

@end
