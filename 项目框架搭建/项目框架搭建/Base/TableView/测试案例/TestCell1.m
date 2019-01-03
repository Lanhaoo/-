//
//  TestCell1.m
//  Test
//
//  Created by lanhao on 2019/1/2.
//  Copyright © 2019年 lanhao. All rights reserved.
//

#import "TestCell1.h"

@implementation TestCell1

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initSubViews];
    }
    return self;
}

-(void)initSubViews{
    self.contentView.backgroundColor = [UIColor redColor];
    self.textLabel.text = @"第一种cell";
}


@end
