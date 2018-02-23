//
//  MSWindow.m
//  MSEventDemo
//
//  Created by magic on 2018/2/22.
//  Copyright © 2018年 magic. All rights reserved.
//

#import "MSWindow.h"

@implementation MSWindow

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s %@ began", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
    UIView *returnView = [super hitTest:point withEvent:event];
    NSLog(@"MSWindow hitTest ##%@ >>> %@", NSStringFromClass([self class]), NSStringFromClass([returnView class]));
    return returnView;
}

@end
