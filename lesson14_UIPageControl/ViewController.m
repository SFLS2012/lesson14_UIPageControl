//
//  ViewController.m
//  lesson14_UIPageControl
//
//  Created by 朱 皓斌 on 13-3-25.
//  Copyright (c) 2013年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    myScrollView=[[UIScrollView alloc]init];
    myScrollView.frame=CGRectMake(0, 0, 320, 568);
    myScrollView.contentSize=CGSizeMake(1280, 568);
    myScrollView.showsHorizontalScrollIndicator=NO;
    myScrollView.showsVerticalScrollIndicator=NO;
    myScrollView.scrollEnabled=YES;
    myScrollView.pagingEnabled=YES;
    myScrollView.bounces=YES;
    myScrollView.delegate=self;
    
    UIView *firstView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    firstView.backgroundColor=[UIColor grayColor];
    [myScrollView addSubview:firstView];
    
    UIView *secondView=[[UIView alloc]initWithFrame:CGRectMake(320, 0, 320, 568)];
    secondView.backgroundColor=[UIColor yellowColor];
    [myScrollView addSubview:secondView];
    
    UIView *thirdView=[[UIView alloc]initWithFrame:CGRectMake(640, 0, 320, 568)];
    thirdView.backgroundColor=[UIColor redColor];
    [myScrollView addSubview:thirdView];
    
    UIView *fourthView=[[UIView alloc]initWithFrame:CGRectMake(960, 0, 320, 568)];
    fourthView.backgroundColor=[UIColor greenColor];
    [myScrollView addSubview:fourthView];

    [self.view addSubview:myScrollView];
    
    myPageControl=[[UIPageControl alloc]init];
    myPageControl.frame=CGRectMake(155, 510, 20, 20);
    myPageControl.numberOfPages=4;
    myPageControl.currentPage=0;
    [myPageControl setCurrentPageIndicatorTintColor:[UIColor blueColor]];
    [myPageControl setPageIndicatorTintColor:[UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:0.5]];
    
    [self.view addSubview:myPageControl];
    
    PageView=[[UIView alloc]init];
    PageView.frame=CGRectMake(130, 250, 50, 50);
    PageView.backgroundColor=[UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.3];
    
    PageLabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 30, 30)];
    PageLabel.text=@"1";
    PageLabel.textColor=[UIColor whiteColor];
    PageLabel.backgroundColor=[UIColor clearColor];
    [PageLabel setTextAlignment:NSTextAlignmentCenter];
    [PageView addSubview:PageLabel];
    [self.view addSubview:PageView];
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    int page=scrollView.contentOffset.x/320;
    myPageControl.currentPage=page;
    PageLabel.text=[NSString stringWithFormat:@"%i",page+1];
}






@end
