#import <substrate.h>
#import <Foundation/Foundation.h>

%hook NSBundle
- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    NSString *origStr = %orig(key, value, tableName);
    // 匹配这个本地化key
    if ([key isEqualToString:@"5G+"]) {
        return @"5Gᴀ";
    }
    return origStr;
}
%end