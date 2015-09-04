#import "ButtonViewController.h"
#import "InterstitialViewController.h"
@import AdbladeSDK;

@interface ButtonViewController ()

@end

@implementation ButtonViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    InterstitialViewController *newController = segue.destinationViewController;
    
    if ([segue.identifier  isEqual: @"banner"]) {
        newController.containerId = @"13323-2709803565";
        newController.adType = AdbladeAdTypemediumRectangle;
    }
    else if ([segue.identifier  isEqual: @"richMedia"]) {
        newController.containerId = @"14638-1071113961";
        newController.adType = AdbladeAdTyperichMediaMediumRectangle;
    }
    else if ([segue.identifier  isEqual: @"slideshow"]) {
        newController.containerId = @"14639-1220217112";
        newController.adType = AdbladeAdTypeslideshow;
    }
}
@end
