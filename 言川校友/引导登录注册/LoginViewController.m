//
//  LoginViewController.m
//  言川校友
//
//  Created by apple on 16/3/21.
//  Copyright © 2016年 bean. All rights reserved.
//

#import "LoginViewController.h"
#import "MyController.h"
#import "parentsTabBarController.h"
#import "teachersTabBarController.h"
#import "studentsTabBarController.h"
@interface LoginViewController ()

@property (nonatomic ,strong) UIButton *btn;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i=0; i<3; i++) {
        _btn = [MyController createButtonWithFrame:CGRectMake(100, 100+i*100, 200, 50) ImageName:@"image.png" Target:self Action:@selector(pressBtn:) Title:@"测试"];
        _btn.backgroundColor = [UIColor redColor];
        _btn.tag = 1000+i;
        [self.view addSubview:_btn];
    }
    
}
- (void)pressBtn:(id)sender{
    UIButton *button = sender;
    if (button.tag == 1000) {
        parentsTabBarController *parents = [[parentsTabBarController alloc] init];
        [self presentViewController:parents animated:YES completion:nil];
    }
    if (button.tag == 1001) {
        teachersTabBarController *teachers = [[teachersTabBarController alloc] init];
        [self presentViewController:teachers animated:YES completion:nil];
    }
    if (button.tag == 1002) {
        studentsTabBarController *students = [[studentsTabBarController alloc] init];
        [self presentViewController:students animated:YES completion:nil];
    }
    
}
@end
