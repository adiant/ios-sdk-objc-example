#import "BannerViewController.h"
@import AdbladeSDK;

@interface BannerViewController ()

@end

@implementation BannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AdbladeBannerView *abView = (AdbladeBannerView *)[AdbladeViewFactory createView:(@"13321-3790713564") adType: AdbladeAdTypebanner delegate: self];
    
    [[self view] addSubview: abView];
}

- (void)didReceiveAd:(id<AdbladeView> __nonnull)view {
    AdbladeBannerView *abView = (AdbladeBannerView *) view;
    abView.center = self.view.center;
}
@end