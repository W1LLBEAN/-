//
//  meViewController.m
//  言川校友
//
//  Created by apple on 16/3/19.
//  Copyright © 2016年 bean. All rights reserved.
//
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#import "meViewController.h"
#import "MyController.h"
@interface meViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) NSMutableArray *dataArr;

@property (nonatomic ,strong) UIButton *btn;//cell里面的 button
@property (nonatomic ,strong) UILabel *label;//cell 里面的 label
@property (nonatomic ,strong) UIImageView *image;//cell里面的 图片

@end

@implementation meViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createTableView];
}
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, ScreenHeight) style:UITableViewStyleGrouped];//group只有条状和背景颜色, plain 是背景颜色
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0 || section == 1) {
        return 1;
    }
    else if( section == 2 || section == 3)
    {
        return 2;
    }
    return 0;
}
//cell 之间的间距
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 5;
    }else if (section == 1)
    {
        return 10;
    }else if (section == 2 || section == 3)
    {
        return 10;
    }
    return 0;
}

//// cell 之间的间距
//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    
//    return 1;
//    
//}
//cell 高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 74;
    }else if (indexPath.section == 1)
    {
        return 44;
    }else if (indexPath.section == 2 || indexPath.section == 3 )
    {
        return 44;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *string = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:string];
    }
    //-----------------------具体布局-----------------------//

    
    
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

@end
