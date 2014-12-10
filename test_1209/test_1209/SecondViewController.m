//
//  SecondViewController.m
//  test_1209
//
//  Created by lixianke on 14/12/9.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"ok 2");
    
    [self setTitle:@"Second"];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 100, 140, 40);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(90, 200, 140, 40);
    button1.backgroundColor = [UIColor purpleColor];
    [button1 setTitle:@"HideOrShow" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(hideOrShow:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

-(IBAction)next:(id)sender {
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}

-(IBAction)hideOrShow:(id)sender {
    if (self.navigationController.toolbarHidden){
        [self.navigationController setToolbarHidden:NO];
        [self.navigationController setNavigationBarHidden:NO];
    } else {
        [self.navigationController setToolbarHidden:YES];
        [self.navigationController setNavigationBarHidden:YES];
    }
}

@end
