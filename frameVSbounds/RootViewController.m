//
//  RootViewController.m
//  testios
//
//  Created by wangyang on 2019/8/23.
//  Copyright © 2019 wangyang. All rights reserved.
//

#import "RootViewController.h"


@interface RootViewController () <UIGestureRecognizerDelegate> {

    __weak IBOutlet UIButton *_button;
    __weak IBOutlet UIView *container;
    __weak IBOutlet UITextField *x;
    __weak IBOutlet UITextField *y;
    __weak IBOutlet UITextField *width;
    __weak IBOutlet UITextField *height;

    __block CGRect defaultBounds;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self->defaultBounds = self->container.bounds;
    });
}

- (IBAction)backToDefault:(id)sender {
    container.bounds = defaultBounds;
    x.text = @"0";
    y.text = @"0";
    width.text = @"240";
    height.text = @"128";
}

- (IBAction)changeBounds:(id)sender {
    container.bounds = CGRectMake(x.text.floatValue, y.text.floatValue, width.text.floatValue, height.text.floatValue);
}

- (IBAction)printNow:(id)sender {
    NSLog(@"container bounds: %@", NSStringFromCGRect(container.bounds));
    NSLog(@"container frame: %@", NSStringFromCGRect(container.frame));
    NSLog(@"------------------------");
}

- (IBAction)rotate:(id)sender {
    container.transform = CGAffineTransformMakeRotation(M_PI_4);
}
- (IBAction)scale:(id)sender {
    container.transform = CGAffineTransformMakeScale(0.6, 0.6);
}
- (IBAction)scaleBig:(id)sender {
    container.transform = CGAffineTransformMakeScale(1.6, 1.6);
}

- (IBAction)recovery:(id)sender {
    container.transform = CGAffineTransformIdentity;
}


@end
