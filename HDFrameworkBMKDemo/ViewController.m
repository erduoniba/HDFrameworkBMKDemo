//
//  ViewController.m
//  HDFrameworkBMKDemo
//
//  Created by denglibing on 2017/5/9.
//  Copyright © 2017年 denglibing. All rights reserved.
//

#import "ViewController.h"

#import <HDFrameworkBMKSDK/HDBMKFrameworkViewController.h>

#import "MapViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)hostPresent:(id)sender {
    [self presentViewController:MapViewController.new animated:YES completion:Nil];
}

- (IBAction)frameworkPresent:(id)sender {
    [self presentViewController:HDBMKFrameworkViewController.new animated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
