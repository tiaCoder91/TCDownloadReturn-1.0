//
//  AppDelegate.h
//  TCDownloadReturn-1.1
//
//  Created by Mattia Leggieri on 10/09/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>
- (void)viewDelegate:(NSView *)view;
- (void)buttonDelegate:(NSButton *)button;
- (void)textFieldDelegate:(NSTextField *)textField;
@end

