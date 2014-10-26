//
//  BookPageView.m
//  BookPageView
//
//  Created by Kiyoshi Nagahama on 10/20/14.
//  Copyright (c) 2014 Digital Bytes Inc. All rights reserved.
//

#import "BookPageView.h"


@implementation BookPageView


- (void)showPageNumber
{
    NSLog(@"%li", [self.dataSource numberOfPagesInBookPageView:self]);
}

@end
