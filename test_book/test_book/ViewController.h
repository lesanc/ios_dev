//
//  ViewController.h
//  test_book
//
//  Created by lixianke on 14/12/10.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import <UIKit/UIKit.h>

enum DirectionForward {
    ForwardBefore = 1,
    ForwardAfter = 2
};

@interface ViewController : UIViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate> {
    int pageIndex;
    int directionForward;
}

@property (strong, nonatomic) UIPageViewController *pageViewController;


@end

