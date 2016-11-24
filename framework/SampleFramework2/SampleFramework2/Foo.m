//
//  Foo.m
//  SampleFramework2
//
//  Created by Damien Gavard on 24/11/2016.
//  Copyright © 2016 Foo. All rights reserved.
//

#import "Foo.h"
#import <MDWamp/MDWamp.h>

@implementation Foo

-(NSString *)sayHello {

    MDWampTransportWebSocket *websocket = [[MDWampTransportWebSocket alloc] initWithServer:[NSURL URLWithString:@"ws://localhost:8080/ws"] protocolVersions:@[kMDWampProtocolWamp2msgpack, kMDWampProtocolWamp2json]];

    return @"hello";
}

@end
