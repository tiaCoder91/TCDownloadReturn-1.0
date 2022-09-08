#import "Button.h"

@implementation Button

- (instancetype)init
{
	if (self = [super init]) {
		NSRect frame1 = NSMakeRect(0, 0, 90, 40);
		self = [[Button alloc] initWithFrame: frame1];
		self.bezelStyle = NSBezelStyleRounded;
	}
	return self;
}

- (instancetype)initWithRect:(NSRect)rect
{
	if (self = [super init]) {
		NSRect frame1 = rect;
		self = [[Button alloc] initWithFrame: frame1];
		self.bezelStyle = NSBezelStyleRounded;
	}
	return self;
}

@end