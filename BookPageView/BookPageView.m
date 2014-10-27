//
//  BookPageView.m
//  BookPageView
//
//  Created by Kiyoshi Nagahama on 10/20/14.
//  Copyright (c) 2014 Digital Bytes Inc. All rights reserved.
//

#import "BookPageView.h"


@implementation BookPageView

- (instancetype)initWithFrame:(CGRect)frame
          navidationDirection:(BookPageViewNavigationDirection)navigationDirection
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        _navigationDirection = navigationDirection;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGFloat heightOfSelf = self.frame.size.height;
    CGFloat widthOfSelf = self.frame.size.width;
    self.contentSize = CGSizeMake(widthOfSelf * [self.dataSource numberOfPagesInBookPageView:self], heightOfSelf);
    if (_navigationDirection == BookPageViewNavigationDirectionLeft) {
        self.contentOffset = CGPointMake(widthOfSelf * ([self.dataSource numberOfPagesInBookPageView:self] - 1), 0);
    } else {
        NSLog(@"Right");
    }
    self.pagingEnabled = YES;
}

@end