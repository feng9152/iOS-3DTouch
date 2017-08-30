//
//  ViewController.m
//  iOS 3DTouch
//
//  Created by chenjunfeng on 2017/8/30.
//  Copyright © 2017年 chenjunfeng. All rights reserved.
//

#import "ViewController.h"
#import "PreviewController.h"


static NSString *cell_ID = @"cell";

@interface ViewController ()<UIViewControllerPreviewingDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self setupUI];
}

- (void)setupUI
{
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cell_ID];
    _tableView.rowHeight = 60;

    [self registerForPreviewingWithDelegate:self sourceView:_tableView];
}


#pragma mark - UIViewControllerPreviewingDelegate
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
//    NSIndexPath *indexPath = [_tableView indexPathForCell:(UITableViewCell*) [previewingContext sourceView]];
    
    PreviewController *previewVC = [[PreviewController alloc] init];
    previewVC.view.backgroundColor = [UIColor orangeColor];
    
    UIWebView *web = [[UIWebView alloc] init];
    web.frame = _tableView.frame;
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    
    [previewVC.view addSubview:web];
    
//    previewVC.preferredContentSize = CGSizeMake(200, 400);
//    
//    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, 40);
//    previewingContext.sourceRect = rect;
    
    return previewVC;
}


- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
//    [self showViewController:viewControllerToCommit sender:self];
    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
}


#pragma mark - tableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_ID forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cell_ID];
    }
    cell.textLabel.text = @"按压我试一试😀😀😀";
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



@end
