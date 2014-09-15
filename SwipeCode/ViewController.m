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
    UIImageView *iv = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:iv];
    
    iv.userInteractionEnabled = YES;
    [iv addGestureRecognizer:
     [[UITapGestureRecognizer alloc]
      initWithTarget:self action:@selector(handleSwipeDownGesture:)]];
    
    
    //上方向スワイプの認識
    UISwipeGestureRecognizer *swipeUpRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self.view action:@selector(handleSwipeUpGesture:)];
    swipeUpRecognizer.delegate = self;
    swipeUpRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:swipeUpRecognizer];
   //下方向スワイプの認識
    UISwipeGestureRecognizer *swipeDownRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self.view action:@selector(handleSwipeDownGesture:)];
    swipeDownRecognizer.delegate = self;
    swipeDownRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipeDownRecognizer];

    // 左へスワイプ
    UISwipeGestureRecognizer* swipeLeftGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeLeftGesture:)];
    swipeLeftGesture.delegate = self;
    swipeLeftGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeLeftGesture];
    // 右へスワイプ
    UISwipeGestureRecognizer* swipeRightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeRightGesture:)];
    swipeRightGesture.delegate = self;
    swipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRightGesture];
    
    
}


- (IBAction)handleSwipeLeftGesture:(UISwipeGestureRecognizer *)sender {
    NSLog(@"swipe left");
}

-(IBAction)handleSwipeRightGesture:(UISwipeGestureRecognizer *)sender{
    NSLog(@"swipe right");
}

-(IBAction) handleSwipeUpGesture:(UISwipeGestureRecognizer *)sender {
    NSLog(@"swipe up");
}

-(IBAction) handleSwipeDownGesture:(UISwipeGestureRecognizer *)sender {
    NSLog(@"swipe down");
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
