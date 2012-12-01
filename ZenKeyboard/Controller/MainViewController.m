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
    UIImage * backgroundImage = [UIImage imageNamed:@"BackgroundTexture"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    UIImage *separator = [UIImage imageNamed:@"GenericSeparator"];
    UIImageView *separatorLine = [[UIImageView alloc] initWithFrame:CGRectMake(0, 70, 320, 2)];
    separatorLine.image = separator;
    
    UIImageView *separatorLine2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 140, 320, 2)];
    separatorLine2.image = separator;
    
    UILabel *incomeTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 36, 80, 30)];
    incomeTitle.font = [UIFont fontWithName:HEITI_SC_MEDIUM size:20.0f];
    incomeTitle.text = @"Income";
    incomeTitle.textColor = RGB(104, 114, 121);
    incomeTitle.shadowColor = [UIColor whiteColor];
    incomeTitle.shadowOffset = CGSizeMake(0, 1);
    incomeTitle.backgroundColor = [UIColor clearColor];
    
    _tfIncome = [[UITextField alloc] initWithFrame:CGRectMake(100, 5, 200, 60)];
    [_tfIncome setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:55.0f]];
    _tfIncome.textColor = RGB(104, 114, 121);
    //    _tfIncome.backgroundColor = [UIColor lightGrayColor];
    _tfIncome.textAlignment = UITextAlignmentRight;
    _tfIncome.adjustsFontSizeToFitWidth = YES;
    //    _tfIncome.clearButtonMode = UITpextFieldViewModeWhileEditing;
    //    _tfIncome.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"TotalAmount"]];
    //    _tfIncome.leftViewMode = UITextFieldViewModeAlways;
    _tfIncome.text = @"0.00";
    //    _tfIncome.keyboardType = UIKeyboardTypeDecimalPad;

    UILabel *expenceTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 106, 100, 30)];
    expenceTitle.font = [UIFont fontWithName:HEITI_SC_MEDIUM size:20.0f];
    expenceTitle.text = @"Expence";
    expenceTitle.textColor = RGB(104, 114, 121);
    expenceTitle.shadowColor = [UIColor whiteColor];
    expenceTitle.shadowOffset = CGSizeMake(0, 1);
    expenceTitle.backgroundColor = [UIColor clearColor];
    
    _tfExpence = [[UITextField alloc] initWithFrame:CGRectMake(100, 75, 200, 60)];
    [_tfExpence setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:55.0f]];
    _tfExpence.textColor = RGB(104, 114, 121);
    _tfExpence.textAlignment = UITextAlignmentRight;
    _tfExpence.adjustsFontSizeToFitWidth = YES;
    _tfExpence.text = @"0.00";
    
    _keyboardView = [[ZenKeyboard alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
    _keyboardView.textField = _tfIncome;
    
    _keyboardView = [[ZenKeyboard alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
    _keyboardView.textField = _tfExpence;
    
    [self.view addSubview:separatorLine];
    [self.view addSubview:separatorLine2];
    [self.view addSubview:incomeTitle];
    [self.view addSubview:_tfIncome];
    [self.view addSubview:expenceTitle];
    [self.view addSubview:_tfExpence];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [_tfIncome becomeFirstResponder];
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
