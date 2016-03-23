//
//  teachersTabBarController.m
//  言川校友
//
//  Created by apple on 16/3/19.
//  Copyright © 2016年 bean. All rights reserved.

#define ImageArr @[@"",@"",@""];//tabBar正常页面
#define SelectedImageArr @[@"",@"",@""]//tabBar选中页面
#define TitleArr @[@"校园",@"心理学",@"我的"]

#import "teachersTabBarController.h"
#import "schoolViewController.h"
#import "psyViewController.h"
#import "meViewController.h"

@interface teachersTabBarController ()

@end

@implementation teachersTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
}
- (void)createUI{
    schoolViewController *schoolVC = [[schoolViewController alloc] init];
    psyViewController *psyVC = [[psyViewController alloc] init];
    meViewController *meVC = [[meViewController alloc] init];
    
    NSArray*controllerArr = @[schoolVC,psyVC,meVC];
    NSArray*imageArr = ImageArr;
    NSArray*selectedImageArr = SelectedImageArr;
    NSArray*titleArr = TitleArr;
    
    NSMutableArray*viewControllersArr = [[NSMutableArray alloc]init];
    for (int i= 0; i<controllerArr.count; i++)
    {
        UINavigationController*nav = [[UINavigationController alloc]initWithRootViewController:controllerArr[i]];
        nav.tabBarItem.title = titleArr[i];
        nav.tabBarItem.image = [[UIImage imageNamed:imageArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageArr[i]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [viewControllersArr addObject:nav];
    }
    self.viewControllers = viewControllersArr;
    
}
@end
