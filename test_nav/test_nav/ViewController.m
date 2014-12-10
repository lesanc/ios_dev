//
//  ViewController.m
//  test_nav
//
//  Created by lixianke on 14/12/9.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userIdChange:) name:@"UserIdChange" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reg:(id)sender {
    UIStoryboard *mainStroyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *registerVeiwController = [mainStroyboard instantiateViewControllerWithIdentifier:@"registerViewController"];
    registerVeiwController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:registerVeiwController animated:YES completion:^{
        NSLog(@"present");
    }];
}

- (void)userIdChange:(NSNotification *)notification {
    NSString *text = notification.object;
    _userIdTextField.text = text;
    NSLog(@"%@", text);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
