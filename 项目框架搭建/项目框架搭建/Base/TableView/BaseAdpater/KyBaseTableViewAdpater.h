//
//  KyBaseTableViewAdpater.h
//  项目框架搭建
//
//  Created by lanhao on 2019/1/3.
//  Copyright © 2019年 lanhao. All rights reserved.
//

/*
 此类的作用是将tableView的代码单独独立出来，减少控制器的代码量。
 **/
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol KyTableViewSelectedRowDelegate <NSObject>

@optional

-(void)Ky_HandleDidSelectedRow:(NSIndexPath *)indexPath cellModel:(id)model;

@end

NS_ASSUME_NONNULL_BEGIN

@interface KyBaseTableViewAdpater : NSObject <UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,weak)UITableView * ky_tableView ;

@property(nonatomic,strong)NSMutableArray * ky_dataRecords ;

@property(nonatomic,weak)id<KyTableViewSelectedRowDelegate> ky_AdpaterDelegate ;

-(instancetype)initWithTableView:(UITableView *)tableView
              adpaterDelegate:(id<KyTableViewSelectedRowDelegate>)delegate;

-(void)ky_configuration; // 自定义tableView

@end

NS_ASSUME_NONNULL_END
