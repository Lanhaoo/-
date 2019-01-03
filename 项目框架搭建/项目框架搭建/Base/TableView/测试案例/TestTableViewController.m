//
//  TestTableViewController.m
//  项目框架搭建
//
//  Created by lanhao on 2019/1/3.
//  Copyright © 2019年 lanhao. All rights reserved.
//

/*
 此类演示了KyBaseTableViewAdpater的使用
 可以看出控制器有关于UITableView的代码量很少
 UITableView的使用被KyBaseTableViewAdpater(或者它的子类) 接管了
 控制器中只需要提供数据给KyBaseTableViewAdpater就可以了。
 cell的点击事件可以通过代理暴露给控制器
 */
#import "TestTableViewController.h"
#import "TestTableViewAdpater.h"
@interface TestTableViewController ()<KyTableViewSelectedRowDelegate>
{
    TestTableViewAdpater *_adpater;
}
@property(nonatomic,strong)UITableView * tableView ;

@end

@implementation TestTableViewController
-(void)dealloc{
    NSLog(@"TestTableViewController--被释放了");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    _adpater = [[TestTableViewAdpater alloc]initWithTableView:self.tableView adpaterDelegate:self];
}

#pragma mark -- KyTableViewSelectedRowDelegate
-(void)Ky_HandleDidSelectedRow:(NSIndexPath *)indexPath cellModel:(id)model{
    
    
    
}
@end
