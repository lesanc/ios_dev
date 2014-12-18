//
//  ViewController.m
//  test_book
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
    
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageViewController.delegate = self;
    self.pageViewController.dataSource = self;
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *page1ViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"page1"];
    
    NSArray *viewControllers = @[page1ViewController];
    
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
    
    [self.view addSubview:self.pageViewController.view];
    
    pageIndex = 0;
    
    NSError *error;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *path = [[paths lastObject] stringByAppendingPathComponent:@"dic1.txt"];
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"hello hollo", @"aaa", @"lixianke china", @"bbb", nil];
    
    if ([fileManager createFileAtPath:path contents:nil attributes:nil] == NO) {
        NSLog(@"file create failed");
    }
    
    if ([paths writeToFile:path atomically:YES] == NO) {
        NSLog(@"file write failed");
    }
   
    NSString *file = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    
    NSLog(@"file = %@", file);
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    pageIndex--;
    
    if (pageIndex < 0){
        pageIndex = 0;
        return nil;
    }
    
    directionForward = ForwardBefore;
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NSString *pageId = [NSString stringWithFormat:@"page%i", pageIndex + 1];
    UIViewController *pvController = [mainStoryboard instantiateViewControllerWithIdentifier:pageId];
    
    return pvController;
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    pageIndex++;
    
    if (pageIndex > 2){
        pageIndex = 2;
        return nil;
    }
    
    directionForward = ForwardBefore;
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NSString *pageId = [NSString stringWithFormat:@"page%i", pageIndex + 1];
    UIViewController *pvController = [mainStoryboard instantiateViewControllerWithIdentifier:pageId];
    
    return pvController;
    
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray *)previousViewControllers transitionCompleted:(BOOL)completed {
    if (completed){
        if (directionForward == ForwardAfter) {
            pageIndex--;
        }
        if (directionForward == ForwardBefore) {
            pageIndex++;
        }
    }
}

- (UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController *)pageViewController spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation {
    self.pageViewController.doubleSided = NO;
    return UIPageViewControllerSpineLocationMin;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
