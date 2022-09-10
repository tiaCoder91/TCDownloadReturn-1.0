//
//  AppDelegate.m
//  TCDownloadReturn-1.1
//
//  Created by Mattia Leggieri on 10/09/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, readwrite) NSView *view;
@property (nonatomic, readwrite) NSWindow *window;
@end

@implementation AppDelegate

- (void)windowWillClose:(NSNotification *)notification {
    exit(0);
}

/*
- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize {
    NSLog(@"sender width = %f & view size = %@", sender.frame.size.width, NSStringFromSize(_view.frame.size));
    NSSize mySize = NSMakeSize(sender.frame.size.width+30, sender.frame.size.height);
    [_view setFrameSize: mySize];
    return frameSize;
}
*/

- (void)windowDidResize:(NSNotification *)notification {
    NSWindow *window = notification.object;
    NSSize mySize = NSMakeSize(window.frame.size.width+30, window.frame.size.height);
    [_view setFrameSize: mySize];
}

/*
- (void)windowDidEndLiveResize:(NSNotification *)notification {
    NSLog(@"notifica = %@", notification.object);
    NSWindow *window = notification.object;
    NSSize mySize = NSMakeSize(window.frame.size.width+30, window.frame.size.height);
    [_view setFrameSize: mySize];
}
*/

- (void)viewDelegate:(NSView *)view {
    _view = view;
}


@end
