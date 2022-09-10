#import "Window.h"
#import "AppDelegate.h"
#import "View/View.h"
#import "View/Button.h"
#import "View/TextField.h"

@implementation Window

- (instancetype)init
{
	//[NSBundle loadNibNamed:@"myMain" owner:app];
	// NSViewMinYMargin | NSViewWidthSizable |
	
	// ??????????????????????????????????????????????
	/*
	NSScreen *screen = [NSScreen mainScreen];
	NSDictionary *description = [screen deviceDescription];
	NSSize displayPixelSize = [[description objectForKey:NSDeviceSize] sizeValue];
	CGSize displayPhysicalSize = CGDisplayScreenSize(
		[[description objectForKey:@"NSScreenNumber"] unsignedIntValue]);
	
	NSLog(@"Screen width is %0.2f", displayPixelSize.width);
	NSLog(@"Screen height is %0.2f", displayPixelSize.height);
	*/
	// ???????????????????????????????????????????????
	
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
		[view setFrameSize: NSMakeSize(window.frame.size.width, window.frame.size.height)];
		[delegate viewDelegate: view];
		
		Button *button = [[Button alloc] initWithRect: NSMakeRect(10, 10, 90, 40)];
		Button *button1 = [[Button alloc] initWithRect: NSMakeRect(window.frame.size.width-90-10, 0+10, 90, 40)];
		[delegate buttonDelegate: button1];
		
		[view addSubview:button];
		
		button1.title = @"Cancel";
		//button1.keyEquivalent = @"\r";
		[view addSubview: button1];
		
        TextField *textField = [[TextField alloc] initWithFrame:NSMakeRect(10, 100, 200, 40)];
        [delegate textFieldDelegate: textField];
        //[textField setFrame: NSMakeRect(10, window.frame.size.height-40, 200, 40)];
        
        [view addSubview: textField];
		//[window.contentView addSubview:pushButton];
		//[window setCollectionBehavior:NSWindowCollectionBehaviorFullScreenPrimary];
		//[view setFrameOrigin:NSMakePoint(20, 20)];
		
		[window.contentView addSubview: view];
		
		[window makeKeyAndOrderFront:NSApp];
	}
	return self;
}

@end
