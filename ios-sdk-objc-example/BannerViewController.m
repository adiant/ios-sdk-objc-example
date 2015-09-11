#import "BannerViewController.h"
@import AdbladeSDK;

@interface BannerViewController ()

@end

@implementation BannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(5, 50, 60, 50)];
    UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc] initWithTarget:self action:NSSelectorFromString(@"done:")];
    [button setTitle: @"Done" forState:(UIControlStateNormal)];
    [button addGestureRecognizer:touch];
    [[self view] addSubview:button];

    AdbladeBannerView *abView = (AdbladeBannerView *)[AdbladeViewFactory createView:(self.containerId) adType: self.adType delegate: self];
    [abView loadAd];
    
    [[self view] addSubview: abView];
}

- (void)willSendRequest:(id<AdbladeView> __nonnull)view url:(NSURL * __nonnull)url {
    NSLog(@"URL - %@", url.relativeString);
}

- (void)didReceiveAd:(id<AdbladeView> __nonnull)view {
    AdbladeBannerView *abView = (AdbladeBannerView *) view;
    abView.center = self.view.center;
}
@end