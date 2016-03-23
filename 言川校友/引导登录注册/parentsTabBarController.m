//
//  parentsTabBarController.m
//  言川校友
//
//  Created by apple on 16/3/19.
//  Copyright © 2016年 bean. All rights reserved.
//

#import "parentsTabBarController.h"
#import "schoolViewController.h"
#import "onlineViewController.h"
#import "psyViewController.h"
#import "meViewController.h"

#define ImageArr @[@"",@"",@"",@""];//tabBar正常页面
#define SelectedImageArr @[@"",@"",@"",@""]//tabBar选中页面
#define TitleArr @[@"校园",@"在线辅导",@"心理学",@"我的"]

@interface parentsTabBarController ()

@end

@implementation parentsTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTabBar];
}
- (void)createTabBar{
    schoolViewController *schoolVC = [[schoolViewController alloc] init];
    onlineViewController *onlineVC= [[onlineViewController alloc] init];
    psyViewController *psyVC = [[psyViewController alloc] init];
    meViewController *meVC = [[meViewController alloc] init];
    NSArray *VCArr = @[schoolVC,onlineVC,psyVC,meVC];
    NSArray *titleArr = TitleArr;
    NSArray *imageArr = ImageArr;
    NSArray *selectedImageArr = SelectedImageArr;
    NSMutableArray *viewControllerArr = [[NSMutableArray alloc] init];
    for (int i= 0; i<VCArr.count; i++){
        UINavigationController*nav = [[UINavigationController alloc]initWithRootViewController:VCArr[i]];
        nav.tabBarItem.title = titleArr[i];
        nav.tabBarItem.image = [[UIImage imageNamed:imageArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageArr[i]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [viewControllerArr addObject:nav];
    }
    self.viewControllers = viewControllerArr;
    
    self.tabBar.tintColor = [UIColor greenColor];
}
@end
