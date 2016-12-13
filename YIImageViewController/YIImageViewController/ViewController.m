//
//  ViewController.m
//  YIImageViewController
//
//  Created by zhouyi on 2016/12/13.
//  Copyright © 2016年 lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addTapToImageView];
}

- (void)addTapToImageView{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showFullImageView:)];
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:tap];
    
}
- (void)showFullImageView:(UIGestureRecognizer*)ges{
    [UIView animateWithDuration:0.25 animations:^{
        [self.imageView setFrame:self.view.frame];
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark getter
- (UIImageView*)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 120, 120)];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
        [_imageView setCenter:self.view.center];
        [_imageView setImage:[UIImage imageNamed:@"pic1.jpg"]];
        [self.view addSubview:_imageView];
    }
    return _imageView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
