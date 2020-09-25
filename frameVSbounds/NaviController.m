//
//  NaviController.m
//  testios
//
//  Created by wy on 2020/8/20.
//  Copyright © 2020 wangyang. All rights reserved.
//

#import "NaviController.h"

@interface NaviController ()

@end

@implementation NaviController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations{
    return [self.topViewController supportedInterfaceOrientations];
}

- (BOOL) shouldAutorotate {
    return [self.topViewController shouldAutorotate];
}


@end
