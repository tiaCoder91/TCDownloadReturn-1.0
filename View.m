#import "View.h"

@implementation View

- (instancetype)init
{
	if (self = [super init]) {
		self = [[View alloc] initWithFrame:NSMakeRect(0, 0, 100, 100)];
		[self setWantsLayer:YES];
		self.layer.backgroundColor = [[NSColor yellowColor] CGColor];
	}
	return self;
}

@end