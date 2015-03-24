//
//  RootViewController.m
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.resultVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultViewController"];
    
  }



- (IBAction)rootBtnChangePageAction:(id)sender {
    [self.navigationController pushViewController:self.resultVC animated:YES];

}
@end
