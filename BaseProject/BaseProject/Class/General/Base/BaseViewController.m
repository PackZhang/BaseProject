//
//  BaseViewController.m
//  BaseProject
//
//  Created by Pack Zhang on 17/3/14.
//
//

#import "BaseViewController.h"

@implementation BaseViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        [self initBindProtocolMethod];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self initBindProtocolMethod];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = item;
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [SVProgressHUD dismiss];
}

- (void)initBindProtocolMethod {
    @weakify(self)
    [[self rac_signalForSelector:@selector(viewDidLoad)] subscribeNext:^(id  _Nullable x) {
        @strongify(self)
        [self configureSubViews];
        [self configureNavigationBar];
        [self bindViewModel];
    }];
}

#if DEBUG
- (void)dealloc {
    NSLog(@"%@ :: is dealloced", NSStringFromClass([self class]));
}
#endif

@end
