//
//  LoginViewController.m
//  Login
//
//  Created by deyi on 16/3/11.
//  Copyright © 2016年 deyi. All rights reserved.
//

#import "LoginViewController.h"
#import "UIView+SetRound.h"
#import "Masonry.h"

@interface LoginViewController()

@property (weak, nonatomic) IBOutlet UIView *inputView;
@property (weak, nonatomic) IBOutlet UITextField *topTextField;
@property (weak, nonatomic) IBOutlet UITextField *belowTextField;



@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.inputView setRound];
    
    UIView *topLeftView = [[UIView alloc] init];
    topLeftView.frame = CGRectMake(0, 0, 33, 33);
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"u9"]];
    //self.toptextField.leftView = leftView;
    //imageView.frame = CGRectMake(0, 0, 25, 25);
    [self.topTextField setLeftView:topLeftView];
    [self.topTextField setLeftViewMode:UITextFieldViewModeAlways];
    self.topTextField.placeholder = @"请输入用户名";
    [topLeftView addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(topLeftView);
        make.size.mas_equalTo(CGSizeMake(23, 23));
        
    }];
    
    UIView *lowLeftView = [UIView new];
    lowLeftView.frame = CGRectMake(0, 0, 33, 33);
    UIImageView *lowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"u12"]];
    self.belowTextField.leftView = lowLeftView;
    self.belowTextField.placeholder = @"请输入密码";
    [self.belowTextField setLeftViewMode:UITextFieldViewModeAlways];
    [lowLeftView addSubview:lowImageView];
    [lowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(lowLeftView);
        make.size.mas_equalTo(CGSizeMake(23, 23));
        
    }];
    
    
}


@end
