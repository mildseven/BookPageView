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

@interface BookPageView : UIView

@property (weak) id <BookPageViewDataSource> dataSource;

- (void)showPageNumber;

@end
