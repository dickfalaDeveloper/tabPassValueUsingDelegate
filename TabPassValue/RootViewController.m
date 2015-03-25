//
//  RootViewController.m
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "RootViewController.h"
#import "TabAUIViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
   
    
    self.resultVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultViewController"];
    self.resultVC.resultDelegate = self;
    
	if ([self.childViewControllers[0] isKindOfClass:[UITabBarController class]]) {
		UITabBarController *tabBarVC = self.childViewControllers[0];
		if ([tabBarVC.viewControllers[0] isKindOfClass:[TabAUIViewController class]]) {
			TabAUIViewController *tabA = tabBarVC.viewControllers[0];
			tabA.delegate = self.resultVC;
		}
	}
}

-(void) resultVC:(ResultViewController *)resultVC didResultPassStr:(NSString *)resultStr
{
    NSLog(@"resultStr:%@",resultStr);
}

- (IBAction)rootBtnChangePageAction:(id)sender {
    [self.navigationController pushViewController:self.resultVC animated:YES];
}
@end
