//
//  ViewController.m
//  UIImageViewDemo2
//
//  Created by MCJ on 15/11/5.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     [self addImageView];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [btn setBackgroundImage:[UIImage imageNamed:@"nor"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"press"] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
   
}


- (void)clickBtn
{
    UIImageView *imgeView = (UIImageView *)[self.view viewWithTag:119];
    [imgeView startAnimating];
}

- (void)addImageView
{
    // 创建UIImageView
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 120, 300, 400)];
    imageView.tag = 119;
    [self.view addSubview:imageView];
    
    // 设置图片数组
    NSMutableArray *arrayM = [[NSMutableArray alloc] init];
    for (int i = 0 ; i < 75; i ++) {
        // 获取图片的名称
        NSString *imageName = [NSString stringWithFormat:@"img_%d",i];
        // 获取image对象
        UIImage *image = [UIImage imageNamed:imageName];
        // 把对象放进数组
        [arrayM addObject:image];
    }
    
    // 设置图片数组
    imageView.animationImages = arrayM;
    
    // 设置播放时间
    imageView.animationDuration = 5;
    
    // 设置播放次数(0 无限循环播放)
    imageView.animationRepeatCount = 1;
    
    // 开始播放
    // [imageView startAnimating];
}
@end
