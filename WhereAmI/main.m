//
// DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
// Version 2, December 2004
//
// Created by Neil Cronin <neil@rackle.com> on 5/13/11.
//
// Everyone is permitted to copy and distribute verbatim or modified
// copies of this license document, and changing it is allowed as long
// as the name is changed.
//
// DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
// TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
// 0. You just DO WHAT THE FUCK YOU WANT TO.
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
