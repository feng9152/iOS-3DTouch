//
//  PreviewController.m
//  iOS 3DTouch
//
//  Created by chenjunfeng on 2017/8/30.
//  Copyright © 2017年 chenjunfeng. All rights reserved.
//

#import "PreviewController.h"

@interface PreviewController ()

@end

@implementation PreviewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    self.title = @"百度一下";
    
}

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"删除" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击 删除按钮");
    }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"标为未读" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击 标为未读");
    }];
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"置顶" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击 置顶");
    }];
    
    
    NSArray *actionsArr = @[action3,action2,action1];
    return actionsArr;
}

@end
