//
//  MSView3.m
//  MSEventDemo
//
//  Created by magic on 2018/2/22.
//  Copyright © 2018年 magic. All rights reserved.
//

#import "MSView3.h"

@implementation MSView3

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"NSView3 # touchesBegan");
}

@end
