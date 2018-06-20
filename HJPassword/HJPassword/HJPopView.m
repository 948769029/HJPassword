//
//  HJPopView.m
//  HJPassword
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 张洪健. All rights reserved.
//

#import "HJPopView.h"
#import "HJPasswordView.h"

@implementation HJPopView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, frame.size.width - 30, frame.size.height-15)];
        bgView.backgroundColor = [UIColor whiteColor];
        bgView.layer.borderWidth = 0.5;
        bgView.layer.borderColor = [UIColor blackColor].CGColor;
        [self addSubview:bgView];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
        label.center = CGPointMake(bgView.center.x, 15);
        label.text = @"激活公司";
        label.backgroundColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor blackColor];
        label.layer.borderWidth = 0.5;
        label.layer.borderColor = [UIColor blackColor].CGColor;
        [self addSubview:label];
        
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, bgView.frame.size.width, 20)];
        title.text = @"请输入会计公司预留的激活码";
        title.textAlignment = NSTextAlignmentCenter;
        title.font = [UIFont systemFontOfSize:14];
        title.textColor = [UIColor blackColor];
        [bgView addSubview:title];
        
        HJPasswordView *pwdView = [[HJPasswordView alloc] initWithFrame:CGRectMake(10, 60, bgView.frame.size.width - 20, bgView.frame.size.height - 60)];
        pwdView.elementCount = 4;
        pwdView.isEqualWidth = YES;
        [pwdView setNoSecure];
        pwdView.elementColor = [UIColor blackColor];
        pwdView.selectColor = [UIColor redColor];
        pwdView.elementMargin = 30;
        [bgView addSubview:pwdView];
        __block HJPopView *weakself=self;
        pwdView.passwordBlock = ^(NSString *password) {
            NSLog(@"%@",password);
        };
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor whiteColor];
        button.layer.cornerRadius = 15;
        button.layer.borderColor = [UIColor blackColor].CGColor;
        button.layer.borderWidth = 0.5;
        button.layer.masksToBounds = YES;
        button.frame = CGRectMake(frame.size.width-30, 0, 30, 30);
        [button setTitle:@"关闭" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
    }
    return self;
}

#pragma mark - 事件响应
- (void)btnAction
{
    NSLog(@"关闭");
}

@end
