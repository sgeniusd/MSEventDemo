//
//  MSView.m
//  MSEventDemo
//
//  Created by magic on 2018/2/22.
//  Copyright © 2018年 magic. All rights reserved.
//

#import "MSView.h"

@implementation MSView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, CGRectGetHeight(frame), 21)];
        label.text = NSStringFromClass([self class]);
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentLeft;
        [self addSubview:label];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s %@ %@ began", __PRETTY_FUNCTION__, [self name],NSStringFromClass([self class]));
    UIView *returnView = [super hitTest:point withEvent:event];
    NSLog(@"MSView hitTest ##%@ %@ >>> %@", NSStringFromClass([self class]), [self name], NSStringFromClass([returnView class]));
    return returnView;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    BOOL pointInside = [super pointInside:point withEvent:event];
    NSLog(@"MSView pointInside ##%@ %@ >>> %d", NSStringFromClass([self class]), [self name], pointInside);
    return pointInside;
}

@end
