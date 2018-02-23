//
//  ViewController.m
//  MSEventDemo
//
//  Created by magic on 2018/2/22.
//  Copyright © 2018年 magic. All rights reserved.
//

#import "ViewController.h"
#import "MSView1.h"
#import "MSView2.h"
#import "MSView3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    MSView *view = [[MSView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];;
    view.backgroundColor = [UIColor lightGrayColor];
    view.name = @"gray";
    self.view = view;
    
    MSView1 *view1 = [[MSView1 alloc]initWithFrame:CGRectMake(21, 21, 333, 414)];
    view1.backgroundColor = [UIColor greenColor];
    view1.name = @"green";
    [self.view addSubview:view1];
    
    UIPanGestureRecognizer *gr = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(action:)];
    [view1 addGestureRecognizer:gr];
    

    MSView2 *view2 = [[MSView2 alloc]initWithFrame:CGRectMake(21, 21, 333*0.8, 414*0.8)];
    view2.backgroundColor = [UIColor blueColor];
    view2.name = @"blue";
    [view1 addSubview:view2];
    
    MSView3 *view3 = [[MSView3 alloc]initWithFrame:CGRectMake(21, 21, 333/2, 414/2)];
    view3.backgroundColor = [UIColor yellowColor];
    view3.name = @"yellow";
    [view2 addSubview:view3];
    MSView3 *view3_1 = [[MSView3 alloc]initWithFrame:CGRectMake(333*0.4, 414*0.4, 333*0.4, 414*0.4)];
    view3_1.name = @"red";
    view3_1.backgroundColor = [UIColor redColor];
    [view2 addSubview:view3_1];
    
    MSView1 *view4 = [[MSView1 alloc]initWithFrame:CGRectMake(21, 21+view1.frame.size.height+21, 333, 414)];
    view4.backgroundColor = [UIColor orangeColor];
    view4.name = @"orange";
    [self.view addSubview:view4];
}

- (void)action:(UIPanGestureRecognizer *)gr
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
