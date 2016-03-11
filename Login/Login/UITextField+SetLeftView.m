//
//  UITextField+SetLeftView.m
//  Login
//
//  Created by deyi on 16/3/11.
//  Copyright © 2016年 deyi. All rights reserved.
//

#import "UITextField+SetLeftView.h"
#import "Masonry.h"

@implementation UITextField (SetLeftView)

- (void)setLeftViewOfTextField:(NSString *)str andPlaceholder:(NSString *)place {
    UIView *topLeftView = [[UIView alloc] init];
    topLeftView.frame = CGRectMake(0, 0, 33, 33);
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:str]];
    [self setLeftView:topLeftView];
    [self setLeftViewMode:UITextFieldViewModeAlways];
    self.placeholder = place;
    [topLeftView addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(topLeftView);
        make.size.mas_equalTo(CGSizeMake(23, 23));
        
    }];
}

@end
