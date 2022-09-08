#import "Window.h"
#import "AppDelegate.h"
#import "View.h"
#import "Button.h"

@implementation Window

- (instancetype)init
{
	//[NSBundle loadNibNamed:@"myMain" owner:app];
	// NSViewMinYMargin | NSViewWidthSizable |
	
	if (self = [super init]) {
		NSRect frame = NSMakeRect(1400/2-500/2, 900/2-300/2, 500, 300);
		NSWindow* window  = [[NSWindow alloc] initWithContentRect:frame
			styleMask: NSWindowStyleMaskTitled | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable
			backing:NSBackingStoreBuffered
			defer:NO];
		//[window setBackgroundColor:[NSColor blueColor]];
		[window setMinSize:NSMakeSize(500, 330)];
		
		AppDelegate *delegate = [[AppDelegate alloc] init];
		[window setDelegate: delegate];
		
		View *view = [[View alloc] init];
		Button *button = [[Button alloc] init];
		Button *button1 = [[Button alloc] initWithRect:NSMakeRect(10, 20, 90, 40)];
		
		[view addSubview:button];
		
		button1.title = @"Cancel";
		button1.keyEquivalent = @"\r";
		[view addSubview: button1];
		
		//[window.contentView addSubview:pushButton];
		//[window setCollectionBehavior:NSWindowCollectionBehaviorFullScreenPrimary];
		//[view setFrameOrigin:NSMakePoint(20, 20)];
		
		[window.contentView addSubview: view];
		
		[window makeKeyAndOrderFront:NSApp];
	}
	return self;
}

@end