//
//  main.m
//  WhereAmI
//
//  Created by Neil Cronin on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WhereAmI.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    WhereAmI *where = [[WhereAmI alloc] init];
    [where startLocating:nil];

    
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop run];
    
    [pool drain];
    return 0;
}
