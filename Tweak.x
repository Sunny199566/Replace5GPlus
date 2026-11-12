#import <substrate.h>
#import <Foundation/Foundation.h>

static void (*orig_setText)(id self, SEL _cmd, NSString *text);
void hook_setText(id self, SEL _cmd, NSString *text) {
    if ([text isEqualToString:@"5G+"]) {
        text = @"5GA";
    }
    orig_setText(self, _cmd, text);
}

%ctor {
    Class StatusBarTelephonyLabel = objc_getClass("StatusBarTelephonyLabel");
    if (StatusBarTelephonyLabel) {
        MSHookMessageEx(StatusBarTelephonyLabel, @selector(setText:), (IMP)hook_setText, (IMP *)&orig_setText);
    }
}
