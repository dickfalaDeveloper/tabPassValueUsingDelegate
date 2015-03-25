
//
//  TabAUIViewController.m
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "TabAUIViewController.h"
#import "RootViewController.h"
#import "ResultViewController.h"

@interface TabAUIViewController()
{
 
   // ResultViewController  *resultVC;
}
@end

@implementation TabAUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //resultVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultViewController"];
}

- (IBAction)tabABtnAction:(id)sender {
    RootViewController* tempRootVC = (RootViewController*)self.parentViewController.parentViewController;
    if( [self.delegate respondsToSelector:@selector(tabAVC:passValue:)])
    {
        NSLog(@"hihihii");
        [self.delegate tabAVC:self passValue:@"test"];

    }
    [tempRootVC.navigationController pushViewController:tempRootVC.resultVC animated:YES];
    

}
@end
