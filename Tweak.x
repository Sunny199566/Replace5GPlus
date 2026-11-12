#import <substrate.h>

%hook _UIStatusBarStringView

- (void)setText:(id)arg1 {
    if ([arg1 isEqualToString:@"5G+"]) {
        %orig(@"5Gᴀ");
    } else {
        %orig(arg1);
    }
}

%end