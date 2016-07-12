//
//  ViewController.m
//  LKUMengShare
//
//  Created by andaLK on 16/7/1.
//  Copyright © 2016年 anda. All rights reserved.
//

#import "ViewController.h"
#import "LKShareManager.h"
#import "UMSocialData.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LKShareManager * manager = [LKShareManager defaultManager];
    [UMSocialData defaultData].extConfig.title = @"分享的title";
    [manager setShareVC:self content:@"分享的内容" image:[UIImage imageNamed:@"Jay"] urlStr:@"www.baidu.com"];
    [manager showSharePanel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
