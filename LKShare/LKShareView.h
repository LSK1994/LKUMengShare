//
//  XCShareView.h
//  XCConfigureShare
//
//  Created by andaLK on 16/7/1.
//  Copyright © 2016年 anda. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define XCBlock_Safe(block, ...) if (block) { block(__VA_ARGS__); };

@protocol LKShareViewDelegate <NSObject>

- (void)itemActionWithIndex:(NSInteger)index;

@end

@interface LKShareView : UIView


/**
 *  分享面板
 */
@property (nonatomic, strong) UIView * sharePanel;

@property (nonatomic, weak) id<LKShareViewDelegate> delegate;

- (instancetype)initWithImageNames:(NSArray *)imageNames andTitles:(NSArray *)titles;


@end
