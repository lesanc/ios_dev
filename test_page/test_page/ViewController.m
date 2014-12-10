//
//  ViewController.m
//  test_page
//
//  Created by lixianke on 14/12/10.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.scrollView.frame.size.height;
    
    self.scrollView.contentSize = CGSizeMake(width * 3, height);
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *page1ViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"page1"];
    UIView *page1 = page1ViewController.view;
    page1.frame = CGRectMake(0.0f, 0.0f, width, height);
    
    UIViewController *page2ViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"page2"];
    UIView *page2 = page2ViewController.view;
    page2.frame = CGRectMake(width, 0, width, height);
    
    UIViewController *page3ViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"page3"];
    UIView *page3 = page3ViewController.view;
    page3.frame = CGRectMake(width * 2, 0, width, height);
    
    self.scrollView.delegate = self;
    
    [self.scrollView addSubview:page1];
    [self.scrollView addSubview:page2];
    [self.scrollView addSubview:page3];
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGPoint offset = scrollView.contentOffset;
    self.pageControl.currentPage = offset.x / self.view.frame.size.width;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pageChange:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        int whichPage = self.pageControl.currentPage;
        self.scrollView.contentOffset = CGPointMake(self.view.frame.size.width * whichPage, 0.0f);
    }];
}
@end
