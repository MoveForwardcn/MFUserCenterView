//
//  ViewController.m
//  project
//
//  Created by htkg on 17/3/6.
//  Copyright © 2017年 Uranus. All rights reserved.
//

#import "ViewController.h"
#import "PathView.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
@property (nonatomic,strong) NSMutableArray * aray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PathView * view = [[PathView alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height)];

    [self.view addSubview:view];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
