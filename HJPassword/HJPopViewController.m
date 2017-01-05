//
//  HJPopViewController.m
//  HJPassword
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 张洪健. All rights reserved.
//

#import "HJPopViewController.h"
#import "HJPopView.h"
#import "APIConst.h"

@interface HJPopViewController ()

@end

@implementation HJPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 50);
    [button setTitle:@"返回" forState:UIControlStateNormal];
    button.center = CGPointMake(self.view.center.x, 50);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    HJPopView *popView = [[HJPopView alloc] initWithFrame:CGRectMake(30, 200, ScreenWidth - 60, 150)];
    [self.view addSubview:popView];
}

- (void)btnAction
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
