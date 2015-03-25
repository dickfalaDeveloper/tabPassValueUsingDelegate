//
//  ViewController.h
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabAUIViewController.h"

@class ResultViewController;
@protocol ResultViewControllerDelegate <NSObject>

@optional
-(void) resultVC:(ResultViewController*)resultVC didResultPassStr:(NSString*) resultStr;

@end

@interface ResultViewController : UIViewController <TabAUIViewControllerDelegate>

@property (nonatomic,assign) id<ResultViewControllerDelegate> resultDelegate;

- (IBAction)popBtnAction:(id)sender;


@end

