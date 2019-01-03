//
//  ViewController.m
//  项目框架搭建
//
//  Created by lanhao on 2019/1/3.
//  Copyright © 2019年 lanhao. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    TestTableViewController *test = [[TestTableViewController alloc]init];
    [self.navigationController pushViewController:test animated:true];
}

@end
