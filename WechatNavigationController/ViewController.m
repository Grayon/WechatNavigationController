//
//  ViewController.m
//  WechatNavigationController
//
//  Created by Grayon on 15/11/1.
//  Copyright © 2015年 Grayon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClicked:(UIButton *)sender {
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"view12"];
    UITabBarController *tb = self.navigationController.viewControllers[0];
    [tb setSelectedIndex:0];
    NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:self.navigationController.viewControllers];
    [arr removeLastObject];
    [arr addObject:vc];
    [self.navigationController setViewControllers:arr animated:YES];
//    [self.navigationController popToRootViewControllerAnimated:NO];
//    [tb showViewController:vc sender:self];
//    [self showViewController:vc sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
