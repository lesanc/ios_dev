//
//  RegisterViewController.h
//  test_nav
//
//  Created by lixianke on 14/12/9.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *useridTextField;

- (IBAction)done:(id)sender;

- (IBAction)save:(id)sender;

@end
