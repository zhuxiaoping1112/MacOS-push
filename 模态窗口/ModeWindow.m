//
//  ModeWindow.m
//  模态窗口
//
//  Created by lihongfeng on 16/12/12.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ModeWindow.h"
#import "newWindowStoryboard.h"
@implementation ModeWindow

- (instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSWindowStyleMask)style backing:(NSBackingStoreType)backingStoreType defer:(BOOL)flag screen:(NSScreen *)screen{
    self = [super initWithContentRect:contentRect styleMask:style backing:backingStoreType defer:flag screen:screen];
    return self;
}

- (IBAction)cancelAction:(NSButton *)sender {
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (self.openWindow) {
            self.openWindow();
        }
    });
    [self close];
}

- (IBAction)okAction:(NSButton *)sender {
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"newWindow" bundle:[NSBundle mainBundle]];
    NSWindowController *vc = (NSWindowController *)storyboard.instantiateInitialController;
    NSWindow *window = vc.window;
    [window makeKeyAndOrderFront:self];
//    [self close];
}

- (void)dealloc{
    NSLog(@"释放 window");
}
@end
