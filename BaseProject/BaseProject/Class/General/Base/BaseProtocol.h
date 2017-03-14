//
//  BaseViewControllerProtocol.h
//  BaseProject
//
//  Created by Pack Zhang on 17/3/14.
//
//

#import <Foundation/Foundation.h>

@protocol BaseViewControllerProtocol <NSObject>

@optional
- (void)configureSubViews;
- (void)configureNavigationBar;
- (void)bindViewModel;

@end

@protocol BaseViewModelProtocol <NSObject>

@optional
- (void)bindModel;

@end
