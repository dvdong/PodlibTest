//
//  LUViewController.m
//  PodlibTest
//
//  Created by dengweidong002 on 09/17/2021.
//  Copyright (c) 2021 dengweidong002. All rights reserved.
//

#import "LUViewController.h"
#import <PodlibTest/BlinkingLabel.h>

@interface LUViewController ()

@property (nonatomic, assign) BOOL isBlinking;
@property (nonatomic, strong) BlinkingLabel *label;

@end

@implementation LUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.isBlinking = NO;
    self.label = [[BlinkingLabel alloc] initWithFrame:CGRectMake(40, 80, 200, 30)];
    self.label.text = @"I blink";
    self.label.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:self.label];
    [self.label startBlinking];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(40, 120, 125, 30)];
    [btn setTitle:@"Toggle Blinking" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toggleBlinking) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)toggleBlinking {
    if (self.isBlinking) {
        [self.label stopBlinking];
    } else {
        [self.label startBlinking];
    }
    self.isBlinking = !self.isBlinking;
}
@end
