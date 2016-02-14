//
//  ViewController.m
//  GestureEventIntercept
//
//  Created by apple on 16/2/14.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view11;

@property (weak, nonatomic) IBOutlet TestView *view2;
@property (weak, nonatomic) IBOutlet TestView  *view3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view2.name = @"view2";
    self.view3.name = @"view3";
    
    // view3为view层级的最顶层，在此view上增加一个双击手势
    // 1.创建双击手势
    UITapGestureRecognizer *doubleTapRecongnizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTapHandleForView3:)];
    
    // 2.为这个tap手势设置条件，既连续轻敲两下会被识别到
    doubleTapRecongnizer.numberOfTapsRequired = 2;
    
    // 使得touchBegan方法延迟执行
    doubleTapRecongnizer.delaysTouchesBegan = YES;
    
    // 3.在指定view上加载此手势
    //[self.view3 addGestureRecognizer:doubleTapRecongnizer];
    
    
    // view2为view3父view，我们为view2增加同view3一样的双击手势
    // 1.创建双击手势
    UITapGestureRecognizer *doubleTapRecongnizer1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTapHandleForView2:)];
    
    // 2.为这个tap手势设置条件，既连续轻敲两下会被识别到
    doubleTapRecongnizer1.numberOfTapsRequired = 2;
    
    // 使得touchBegan方法延迟执行
    doubleTapRecongnizer1.delaysTouchesBegan = YES;
    
    // 3.在指定view上加载此手势
    //[self.view2 addGestureRecognizer:doubleTapRecongnizer1];
    
    

    // view11为view2父view，我们为view11增加同view2一样的双击手势
    // 1.创建双击手势
    UITapGestureRecognizer *doubleTapRecongnizer11 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTapHandleForView11:)];
    
    // 2.为这个tap手势设置条件，既连续轻敲两下会被识别到
    //doubleTapRecongnizer11.numberOfTapsRequired = 2;
    
    // 使得touchBegan方法延迟执行
    doubleTapRecongnizer11.delaysTouchesBegan = YES;
    
    // 3.在指定view上加载此手势
    [self.view11 addGestureRecognizer:doubleTapRecongnizer11];
    
}

// 当双击手势被识别后将处罚此方法
-(void)doubleTapHandleForView3:(UIGestureRecognizer *)gr
{
    NSLog(@"I am in doubleTapHandleForView3");
}

// 当双击手势被识别后将处罚此方法
-(void)doubleTapHandleForView2:(UIGestureRecognizer *)gr
{
    NSLog(@"I am in doubleTapHandleForView2");
}

// 当双击手势被识别后将处罚此方法
-(void)doubleTapHandleForView11:(UIGestureRecognizer *)gr
{
    NSLog(@"I am in doubleTapHandleForView11");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
