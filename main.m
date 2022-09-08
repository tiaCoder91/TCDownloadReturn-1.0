//#import <Cocoa/Cocoa.h>
#import "Window.h"

int main(int argc, const char* argv[]) {
   
   NSLog(@"Hello world!");
   NSApplication *app = [NSApplication sharedApplication];

   Window *window = [[Window alloc] init];

   [app run];

   return 0;
}
