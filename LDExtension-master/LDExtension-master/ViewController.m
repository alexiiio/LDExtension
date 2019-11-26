//
//  ViewController.m
//  LDExtension-master
//
//  Created by yl-yin on 2019/6/27.
//  Copyright © 2019 Alex. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LDCategory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *vv = [[UIView alloc]initWithFrame:CGRectMake(100, 200, 200, 100)];
    [self.view addSubview:vv];
    vv.backgroundColor = [UIColor blueColor];
    [vv LD_addCornerRadius:50 andRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight];
}


@end
