#import <UIKit/UIKit.h>
@import AdbladeSDK;

@interface InterstitialViewController :  UIViewController<AdbladeDelegate>
    @property NSString* containerId;
    @property AdbladeAdType adType;
@end