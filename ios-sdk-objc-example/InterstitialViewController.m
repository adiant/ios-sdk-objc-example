#import "InterstitialViewController.h"
@import AdbladeSDK;

@interface InterstitialViewController ()

@end

@implementation InterstitialViewController

- (void)loadView {
    AdbladeInterstitialView *abView = (AdbladeInterstitialView *)[AdbladeViewFactory createView:(@"13323-2709803565") viewType: AdbladeViewTypeinterstitial delegate: nil];
    
    self.view = abView;
}

@end