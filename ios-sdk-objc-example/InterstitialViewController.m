#import "InterstitialViewController.h"
@import AdbladeSDK;

@interface InterstitialViewController ()
@end

@implementation InterstitialViewController

- (void)loadView {
    AdbladeInterstitialView *abView = (AdbladeInterstitialView *)[AdbladeViewFactory createView:(self.containerId) adType: self.adType delegate: self];
    
    
    self.view = abView;
}

- (void)didReceiveAd:(id<AdbladeView> __nonnull)view {
    NSLog(@"received");
}

- (void)didHaveError:(id<AdbladeView> __nonnull)view error:(AdbladeError * __nonnull)error {
    NSLog(@"error");
}

@end