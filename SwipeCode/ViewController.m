//
//  ViewController.m
//  SwipeCode
//
//  Created by 山岸央青 on 2014/09/15.
//  Copyright (c) 2014年 yosei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"むきむき.jpeg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    imageView.frame = [[UIScreen mainScreen] bounds];
    
    
    [self.view addSubview:imageView];
    [imageView setUserInteractionEnabled:YES];
    
    UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(DownSwipeHandle:)];
    [recognizer setNumberOfTouchesRequired:1];
    recognizer.direction = UISwipeGestureRecognizerDirectionDown;
    [imageView addGestureRecognizer:recognizer];
    
//    //上方向スワイプの認識
//    swipeUpRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
//   //下方向スワイプの認識
//    swipeDownRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
//    // 左へスワイプ
//    swipeLeftGesture.direction = UISwipeGestureRecognizerDirectionLeft;
//    // 右へスワイプ
//    swipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    
}

- (void)DownSwipeHandle:(UISwipeGestureRecognizer*)gestureRecognizer {
    NSLog(@"right swipe");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
