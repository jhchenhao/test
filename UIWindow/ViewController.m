//
//  ViewController.m
//  UIWindow
//
//  Created by jhtxch on 16/4/19.
//  Copyright © 2016年 jhtxch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        UIWindow *subWindow = [[UIWindow alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        [subWindow makeKeyAndVisible];
        subWindow.backgroundColor = [UIColor redColor];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
