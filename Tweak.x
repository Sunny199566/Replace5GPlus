#import <substrate.h>
#import <Foundation/Foundation.h>

%hook _UIStatusBarStringView
- (void)setText:(id)arg1 {
    NSString *text = (NSString *)arg1;
    if ([text isEqualToString:@"5G+"]) {
        %orig(@"5Gᴀ");
        return;
    }
    %orig(arg1);
}
%end