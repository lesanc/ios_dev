//
//  ViewController.h
//  test_page
//
//  Created by lixianke on 14/12/10.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

- (IBAction)pageChange:(id)sender;

@end

