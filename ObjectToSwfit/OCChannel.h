//
//  OCChannel.h
//  ObjectToSwfit
//
//  Created by 雷科柱 on 15/8/11.
//  Copyright (c) 2015年 雷科柱. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OCChannel : NSObject

@property (strong, nonatomic) id someProperty;

- (NSString *)ChannelChange:(NSInteger) channels;
- (void) someMethod;

@end
