//
//  ViewController.m
//  DrawImageDemo
//
//  Created by nonoking on 2017/8/7.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "ViewController.h"

#import "MenuItem.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

/***/
@property(nonatomic,strong)NSArray *datasourse;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark - 设置ui
- (void)setupUI
{
    
}

#pragma mark - 设置数据
- (void)vcLoadDatasourse
{
    
}

#pragma mark - 注册通知和实现
- (void)vcRegistNotific
{
    
}

#pragma mark - 懒加载

- (NSArray *)datasourse
{
    if (_datasourse == nil) {
        _datasourse = [MenuItem getItems];
    }
    return _datasourse;
}

#pragma mark - 点击事件

#pragma mark - 业务逻辑

#pragma mark - 自定义代理

#pragma mark - tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datasourse.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *IdentifierID = @"CELL";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:IdentifierID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:IdentifierID];
    }
    MenuItem *item = self.datasourse[indexPath.row];
    cell.textLabel.text = item.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    MenuItem *item = self.datasourse[indexPath.row];

    UIViewController *vc = (UIViewController *)[[NSClassFromString(item.toVc) alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
