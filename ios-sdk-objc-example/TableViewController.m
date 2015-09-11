#import "TableViewController.h"
#import "InterstitialViewController.h"
#import "BannerViewController.h"
#import "NativeViewController.h"
@import AdbladeSDK;

@interface TableViewController ()
@property NSArray* items;
@end

@implementation TableViewController

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (self.items == nil) {
        self.items = @[
                       @[
                           @{
                               @"name": @"Banner", @"containerId": @"13321-3790713564", @"adType": [NSNumber numberWithInt:AdbladeAdTypebanner]
                            }
                        ],
                       @[
                           @{
                               @"name": @"Native", @"containerId": @"13321-3790713564", @"adType": [NSNumber numberWithInt:AdbladeAdTypenative]
                            }
                        ],
                       @[
                           @{
                               @"name": @"Medium Banner", @"containerId": @"13323-2709803565", @"adType": [NSNumber numberWithInt:AdbladeAdTypemediumRectangle]
                            },
                           @{
                               @"name": @"Rich Media", @"containerId": @"14638-1071113961", @"adType": [NSNumber numberWithInt:AdbladeAdTyperichMediaMediumRectangle]
                            },
                           @{
                               @"name": @"Slideshow", @"containerId": @"14639-1220217112", @"adType": [NSNumber numberWithInt:AdbladeAdTypeslideshow]
                            },
                        ],
                    ];
    }
    
    cell.textLabel.text = self.items[indexPath.section][indexPath.row][@"name"];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    AdbladeViewController* viewController;
    
    if ([self.items[indexPath.section][indexPath.row][@"name"]  isEqual: @"Banner"]) {
        viewController = [[BannerViewController alloc] init];
        viewController.adType = AdbladeAdTypebanner;
    }
    else if ([self.items[indexPath.section][indexPath.row][@"name"]  isEqual: @"Native"]) {
        viewController = [[NativeViewController alloc] init];
        viewController.adType = AdbladeAdTypenative;
    }
    else { // interstitial
        viewController = [[InterstitialViewController alloc] init];
        
        if ([self.items[indexPath.section][indexPath.row][@"name"]  isEqual: @"Medium Banner"]) {
            viewController.adType = AdbladeAdTypemediumRectangle;
        }
        else if ([self.items[indexPath.section][indexPath.row][@"name"]  isEqual: @"Rich Media"]) {
            viewController.adType = AdbladeAdTyperichMediaMediumRectangle;
        }
        else { // slideshow
            viewController.adType = AdbladeAdTypeslideshow;
        }
    }
    
    viewController.containerId = self.items[indexPath.section][indexPath.row][@"containerId"];
    [self presentViewController: viewController animated: YES completion: nil];
}
@end