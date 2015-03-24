//
//  TabAUIViewController.h
//  TabPassValue
//
//  Created by James on 2015/3/24.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabAUIViewController;
@protocol TabAUIViewControllerDelegate <NSObject>

@optional

-(void) tabAVC:(TabAUIViewController*)tabAVC passValue:(NSString*) str;

@end

@interface TabAUIViewController : UIViewController

@property (nonatomic,assign) id<TabAUIViewControllerDelegate> delegate;

- (IBAction)tabABtnAction:(id)sender;

@end
