#import <substrate.h>
#import <Foundation/Foundation.h>

%hook _UIStatusBarCellularItem
- (id)primaryString {
    NSString *orig = %orig();
    if ([orig isEqualToString:@"5G+"]) {
        return @"5Gᴀ";
    }
    return orig;
}
%end