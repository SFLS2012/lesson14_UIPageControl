//
//  ViewController.h
//  lesson14_UIPageControl
//
//  Created by 朱 皓斌 on 13-3-25.
//  Copyright (c) 2013年 朱 皓斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>{
    UIScrollView *myScrollView;
    UIPageControl *myPageControl;
    UIView *PageView;
    UILabel *PageLabel;
}

@end
