#import "NativeViewController.h"
@import AdbladeSDK;

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AdbladeNativeView *abView = (AdbladeNativeView *)[AdbladeViewFactory createView:(@"13321-3790713564") adType: AdbladeAdTypenative delegate: self];
    
    [[self view] addSubview: abView];
}

- (void)didReceiveAd:(id<AdbladeView> __nonnull)view {
    AdbladeNativeView *abView = (AdbladeNativeView *) view;
    abView.center = self.view.center;
}
@end