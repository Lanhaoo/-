//
//  TestTableViewAdpater.m
//  Test
//
//  Created by lanhao on 2019/1/2.
//  Copyright © 2019年 lanhao. All rights reserved.
//

#import "TestTableViewAdpater.h"
#import "TestCell1.h"
#import "TestCell2.h"
#import "TestCell3.h"
@implementation TestTableViewAdpater

-(void)ky_configuration{
    self.ky_tableView.rowHeight = 50.f;
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.ky_tableView.frame.size.width, 200)];
    view.backgroundColor = [UIColor lightGrayColor];
    self.ky_tableView.tableHeaderView = view;
    self.ky_tableView.tableFooterView = [UIView new];
    [self.ky_tableView registerClass:[TestCell1 class] forCellReuseIdentifier:@"TestCell1"];
    [self.ky_tableView registerClass:[TestCell2 class] forCellReuseIdentifier:@"TestCell2"];
    [self.ky_tableView registerClass:[TestCell3 class] forCellReuseIdentifier:@"TestCell3"];
    [self.ky_tableView registerClass:[UITableViewHeaderFooterView class] forHeaderFooterViewReuseIdentifier:@"headerView"];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30.f;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UITableViewHeaderFooterView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"headerView"];
    view.textLabel.text = [NSString stringWithFormat:@"%ld",(long)section];
    view.contentView.backgroundColor = [UIColor cyanColor];
    return view;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell1 *cell1 = [tableView dequeueReusableCellWithIdentifier:@"TestCell1"];
    TestCell2 *cell2 = [tableView dequeueReusableCellWithIdentifier:@"TestCell2"];
    TestCell3 *cell3 = [tableView dequeueReusableCellWithIdentifier:@"TestCell3"];
    switch (indexPath.section) {
        case 0:
            return (TestCell1 *)[self createCell:cell1 identity:@"TestCell1"];
            break;
        case 1:
            return (TestCell2 *)[self createCell:cell2 identity:@"TestCell2"];
            break;
        default:
            return (TestCell3 *)[self createCell:cell3 identity:@"TestCell3"];
            break;
    }
    return nil;
}
-(UITableViewCell *)createCell:(UITableViewCell *)cell identity:(NSString *)identity{
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
    }
    return cell;
}
@end
