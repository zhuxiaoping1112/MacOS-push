//
//  newWindowStoryboard.m
//  模态窗口
//
//  Created by 机器人 on 2019/9/27.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "newWindowStoryboard.h"

@interface newWindowStoryboard ()

@end

@implementation newWindowStoryboard

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
- (IBAction)closeWindow:(NSButton *)sender {
    [self.view.window close];
}

@end
