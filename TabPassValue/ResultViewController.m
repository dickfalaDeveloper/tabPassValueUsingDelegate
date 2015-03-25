//
//  ViewController.m
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ResultViewController.h"


@interface ResultViewController ()
@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
   
    
}

-(void)tabAVC:(TabAUIViewController *)tabAVC passValue:(NSString *)str
{
    NSLog(@"str:%@",str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
    if( [self.resultDelegate respondsToSelector:@selector(resultVC:didResultPassStr:)])
    {
        [self.resultDelegate resultVC:self didResultPassStr:@"this value is from resultVC"];
    }
    
    
}
@end
