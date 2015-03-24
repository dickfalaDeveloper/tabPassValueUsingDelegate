//
//  ViewController.m
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ResultViewController.h"
#import "TabAUIViewController.h"

@interface ResultViewController ()<TabAUIViewControllerDelegate>
{
    TabAUIViewController *tabAVC;
}
@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tabAVC = [self.storyboard instantiateViewControllerWithIdentifier:@"TabAUIViewController"];
    tabAVC.delegate = self;
    

}

-(void) tabAVC:(TabAUIViewController *)tabAVC passValue:(NSString *)str
{
    NSLog(@"str:%@",str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
