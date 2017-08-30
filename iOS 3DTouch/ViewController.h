//
//  ViewController.h
//  iOS 3DTouch
//
//  Created by chenjunfeng on 2017/8/30.
//  Copyright © 2017年 chenjunfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


/*
 
 适用场景：
 
 1.应用程序屏幕图标使用 3DTouch
    1.1 在 info.plist 里面静态设置
    1.2 使用代码动态添加
 
 2.应用程序内某一控件使用 3DTouch 操作
 
    2.1 在控制器内为需要实现Peek & Pop交互的控件注册Peek & Pop功能
        [self registerForPreviewingWithDelegate:self sourceView:_tableView];

    2.2 遵守 UIViewControllerPreviewingDelegate 协议

    2.3 实现 UIViewControllerPreviewingDelegate 方法  两个

    2.4 预览控制器中重写 previewActionItems 方法
 

 
 
 */
@end

