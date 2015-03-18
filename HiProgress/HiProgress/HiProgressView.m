//
//  HiProgressView.m
//  LevelTest
//
//  Created by WangZeKeJi on 14-8-5.
//  Copyright (c) 2014年 ___ChengPeng___. All rights reserved.
//
#define H_HEIGHT 70


#import "HiProgressView.h"

@implementation HiProgressView

- (id)initWithFrame:(CGRect)frame withProgress:(float)progress
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CGSize size = self.frame.size;
        _trackView = [[UIImageView alloc] initWithFrame:CGRectMake(0, H_HEIGHT-20, size.width, size.height)];
        _trackView.image = [UIImage imageNamed:@"1.png"];//进度未填充部分显示的图像
        
        [self addSubview:_trackView];

        _progressView = [[UIImageView alloc] initWithFrame:CGRectMake(0, H_HEIGHT-20, size.width, size.height)];
        _progressView.image = [UIImage imageNamed:@"2.png"];//进度填充部分显示的图像
        [self addSubview:_progressView];
        [self setProgress:progress];//设置进度
    }
    return self;
}
-(void)setProgress:(float)fProgress

{
    
    float progress;
    progress = fProgress;
    CGSize size = self.frame.size;
    _progressView.frame = CGRectMake(0, H_HEIGHT-20, size.width *progress, size.height);
}




@end
