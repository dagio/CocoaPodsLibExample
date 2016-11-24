//
//  Sample.m
//  SampleFramework
//
//  Created by Benjamin Asher on 11/21/16.
//  Copyright © 2016 benasher44. All rights reserved.
//

#import "Sample.h"

#define ddLogLevel DDLogLevelAll

@import CocoaLumberjack;
@import SampleFramework2;

@implementation Sample

+ (void)logTest {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
  });
  DDLogInfo(@"Test");

  Foo *foo = [[Foo alloc] init];
  DDLogInfo([foo sayHello]);
}

@end
