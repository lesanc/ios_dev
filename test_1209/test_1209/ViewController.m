//
//  ViewController.m
//  test_1209
//
//  Created by lixianke on 14/12/9.
//  Copyright (c) 2014年 lixianke. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"ok");
    
    [self setTitle:@"First"];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 100, 140, 40);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(90, 200, 140, 30)];
    textField.backgroundColor = [UIColor greenColor];
    [self.view addSubview:textField];
    
    NSFileManager *fm = [NSFileManager defaultManager];
    NSString *fileName = @"abc.txt";
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths lastObject];
    
    //fileName = [path stringByAppendingPathComponent:fileName];
    
    NSLog(@"%@", fileName);
    
    BOOL isDir;
    
    if ([fm fileExistsAtPath:path isDirectory:&isDir] == NO){
        NSLog(@"文件不存在！");
    }
    
    
}

- (void)next:(id)sender {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
