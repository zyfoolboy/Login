//
//  UIView+SetRound.m
//  Login
//
//  Created by deyi on 16/3/11.
//  Copyright © 2016年 deyi. All rights reserved.
//

#import "UIView+SetRound.h"

@implementation UIView (SetRound)

- (void)setRound {
     self.layer.cornerRadius = 4;
    self.layer.masksToBounds = YES;
}

@end
