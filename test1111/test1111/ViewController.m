//
//  ViewController.m
//  test1111
//
//  Created by lixianke on 14/12/6.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 100, 320, 40)];
    pageControl.backgroundColor = [UIColor grayColor];
    pageControl.numberOfPages = 5;
    pageControl.currentPage = 2;
    pageControl.pageIndicatorTintColor = [UIColor redColor];
    pageControl.currentPageIndicatorTintColor = [UIColor yellowColor];
    [pageControl addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:pageControl];
    
    NSArray *items = @[@"首页", @"现场", @"图片", @"本地"];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:items];
    segmentedControl.frame = CGRectMake(60, 200, 200, 40);
    segmentedControl.selectedSegmentIndex = 1;
    [self.view addSubview:segmentedControl];
    
//    int i = 9;
//    NSAssert(i > 9, @"i = %i, 超出范围", i);
}

- (void)change:(UIPageControl *)pageControl {
    DLog(@"%d", pageControl.currentPage);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
