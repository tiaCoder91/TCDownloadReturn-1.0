#import "TextField.h"

@implementation TextField

- (instancetype)init {
    if (self = [super init]) {
        //self = [[TextField alloc] initWithFrame:NSMakeRect(10, 100, 200, 40)];
        //[self setDelegate: self];
    }
    return self;
}

- (BOOL)textShouldBeginEditing:(NSText *)textObject {
    return YES;
}

- (BOOL)textShouldEndEditing:(NSText *)textObject {
    return YES;
}

@end
