//
//  ViewController.h
//  BookPageView
//
//  Created by Kiyoshi Nagahama on 10/20/14.
//  Copyright (c) 2014 Digital Bytes Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookPageView.h"


@interface ViewController : UIViewController <BookPageViewDataSource>

@property (strong) BookPageView *bookPageView;

@end

