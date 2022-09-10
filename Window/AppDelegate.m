//
//  AppDelegate.m
//  TCDownloadReturn-1.1
//
//  Created by Mattia Leggieri on 10/09/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic, readwrite) NSWindow *window;
@property (nonatomic, readwrite) NSView *view;
@property (nonatomic, readwrite) NSButton *button;
@property (nonatomic, readwrite) NSTextField *textField;
@end

@implementation AppDelegate

- (void)windowWillClose:(NSNotification *)notification {
    NSLog(@"Application closed!");
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
    
    NSSize viewSize = NSMakeSize(window.frame.size.width+30, window.frame.size.height);
    [_view setFrameSize: viewSize];
    
    NSPoint buttonOrigin = NSMakePoint(window.frame.size.width-90-10, 0+10);
    [_button setFrameOrigin: buttonOrigin];
}

/*
- (void)windowDidEndLiveResize:(NSNotification *)notification {
    NSLog(@"notifica = %@", notification.object);
    NSWindow *window = notification.object;
    NSSize mySize = NSMakeSize(window.frame.size.width+30, window.frame.size.height);
    [_view setFrameSize: mySize];
}
*/

- (void)buttonDelegate:(NSButton *)button {
    _button = button;
}

- (void)viewDelegate:(NSView *)view {
    _view = view;
}

- (void)textFieldDelegate:(NSTextField *)textField {
    NSLog(@"------------");
    _textField = textField;
}

@end
