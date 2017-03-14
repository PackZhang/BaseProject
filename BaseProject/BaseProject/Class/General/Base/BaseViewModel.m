//
//  BaseViewModel.m
//  BaseProject
//
//  Created by Pack Zhang on 17/3/14.
//
//

#import "BaseViewModel.h"

@implementation BaseViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self bindModel];
    }
    return self;
}

@end
