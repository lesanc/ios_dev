//
//  ThirdViewController.m
//  test_1209
//
//  Created by lixianke on 14/12/9.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "ThirdViewController.h"

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"Third"];
    
    NSLog(@"ok 3");
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 100, 140, 40);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"home" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(IBAction)next:(id)sender {
//    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
//    [self.navigationController pushViewController:thirdViewController animated:YES];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
