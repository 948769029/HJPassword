//
//  ViewController.m
//  HJPassword
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 张洪健. All rights reserved.
//

#import "ViewController.h"
#import "HJPopViewController.h"
#import "HJPasswordView.h"
#import "APIConst.h"

@interface ViewController ()

@property (nonatomic, strong) HJPasswordView *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.password = [[HJPasswordView alloc] initWithFrame:CGRectMake((ScreenWidth-256.5)/2, 193.5, 256.5, 39)];
    self.password.elementCount = 4;
    [self.password setNoSecure];
    self.password.elementColor=UIColorFromRGB(0xd5d5d5);
    self.password.elementMargin = 10;
    [self.view addSubview:self.password];
    __block ViewController *weakself=self;
    self.password.passwordBlock = ^(NSString *password) {
        NSLog(@"%@",password);
    };
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 50);
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    button.center = CGPointMake(self.view.center.x, 50);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)btnAction
{
    HJPopViewController *popVC = [[HJPopViewController alloc] init];
    [self presentViewController:popVC animated:YES completion:nil];
}

@end
