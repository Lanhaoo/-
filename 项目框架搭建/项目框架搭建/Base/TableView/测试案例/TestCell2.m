//
//  TestCell2.m
//  Test
//
//  Created by lanhao on 2019/1/2.
//  Copyright © 2019年 lanhao. All rights reserved.
//

#import "TestCell2.h"

@implementation TestCell2

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initSubViews];
    }
    return self;
}

-(void)initSubViews{
    self.contentView.backgroundColor = [UIColor yellowColor];
    self.textLabel.text = @"第二种cell";
}

@end
