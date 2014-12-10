//
//  RegisterViewController.m
//  test_nav
//
//  Created by lixianke on 14/12/9.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_useridTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"dismiss");
    }];
}

- (IBAction)save:(id)sender {

    NSString *text = _useridTextField.text;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"UserIdChange" object:text];
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"dismiss by sava");
    }];
}
@end
