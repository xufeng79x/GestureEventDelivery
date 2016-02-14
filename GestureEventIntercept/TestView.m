//
//  TestView.m
//  GestureEventIntercept
//
//  Created by apple on 16/2/14.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "TestView.h"

@implementation TestView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"in touchBegan of %@", self.name);
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"in touchesMoved of %@", self.name);
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"in touchesEnded of %@", self.name);
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"in touchesCancelled of %@", self.name);
}

@end
