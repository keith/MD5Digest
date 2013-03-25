//
//  main.m
//  DigestSample
//
//  Created by Keith Smiley on 3/25/13.
//  Copyright (c) 2013 Keith Smiley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MD5.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *name = @"Keith Smiley";
        NSString *digest = [name MD5Digest];
        NSLog(@"Digest: %@", digest);
    }

    return 0;
}

