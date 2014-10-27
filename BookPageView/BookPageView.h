//
//  BookPageView.h
//  BookPageView
//
//  Created by Kiyoshi Nagahama on 10/20/14.
//  Copyright (c) 2014 Digital Bytes Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookPageView;

@protocol BookPageViewDataSource

- (NSUInteger)numberOfPagesInBookPageView:(BookPageView *)bookPageView;

@end

enum {
    BookPageViewNavigationDirectionLeft ,
    BookPageViewNavigationDirectionRight
};
typedef NSInteger BookPageViewNavigationDirection;

@interface BookPageView : UIScrollView

@property (weak) id <BookPageViewDataSource> dataSource;
@property (nonatomic, readonly) BookPageViewNavigationDirection navigationDirection;


- (instancetype)initWithFrame:(CGRect)frame
          navidationDirection:(BookPageViewNavigationDirection)navigationDirection;

@end
