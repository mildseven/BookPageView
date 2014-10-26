//
//  ViewController.m
//  BookPageView
//
//  Created by Kiyoshi Nagahama on 10/20/14.
//  Copyright (c) 2014 Digital Bytes Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSUInteger)numberOfPagesInBookPageView:(BookPageView *)bookPageView
{
    return 2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _bookPageView = [[BookPageView alloc] init];
    _bookPageView.dataSource = self;
    [self.view addSubview:_bookPageView];
    [_bookPageView showPageNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
