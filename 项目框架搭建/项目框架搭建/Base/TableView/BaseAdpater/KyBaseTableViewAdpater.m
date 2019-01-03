//
//  KyBaseTableViewAdpater.m
//  项目框架搭建
//
//  Created by lanhao on 2019/1/3.
//  Copyright © 2019年 lanhao. All rights reserved.
//

#import "KyBaseTableViewAdpater.h"

@implementation KyBaseTableViewAdpater

-(void)dealloc{
    self.ky_tableView.delegate = nil;
    self.ky_tableView.dataSource = nil;
    self.ky_AdpaterDelegate = nil;
    NSLog(@"KyBaseTableViewAdpater--被释放了");
}
-(instancetype)initWithTableView:(UITableView *)tableView adpaterDelegate:(id<KyTableViewSelectedRowDelegate>)delegate{
    if (self = [super init]) {
        self.ky_tableView = tableView;
        self.ky_AdpaterDelegate = delegate;
        self.ky_tableView.delegate = self;
        self.ky_tableView.dataSource = self;
        [self ky_configuration];
    }
    return self;
}
-(void)ky_configuration{
    
    
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableViewCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ky_dataRecords.count?:0;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.ky_AdpaterDelegate && [self.ky_AdpaterDelegate respondsToSelector:@selector(Ky_HandleDidSelectedRow:cellModel:)]) {
        [self.ky_AdpaterDelegate Ky_HandleDidSelectedRow:indexPath
                                              cellModel:[self ky_getCellData:indexPath]];
    }
}
-(id)ky_getCellData:(NSIndexPath *)indexPath{
    if (self.ky_dataRecords && self.ky_dataRecords.count>0) {
        return self.ky_dataRecords[indexPath.row];
    }
    return nil;
}
#pragma mark -- lazy

-(NSMutableArray *)ky_dataRecords{
    if (nil == _ky_dataRecords) {
        _ky_dataRecords = [NSMutableArray array];
    }
    return _ky_dataRecords;
}

@end
