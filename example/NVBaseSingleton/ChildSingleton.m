//
//  ChildSingleton.m
//  NVBaseSingleton
//
//  Created by Zhn on 8/02/2015.
//  Copyright (c) 2015 Zhn. All rights reserved.
//

#import "ChildSingleton.h"

@implementation ChildSingleton
{
    NSInteger m_count;
}

+ (instancetype)shared
{
    return [ChildSingleton sharedWithClass:[ChildSingleton class]];
}

- (instancetype)init
{
    if (self = [super init])
    {
        m_count = 0;
    }
    return self;
}

- (NSString *)stringWithAwesomeString
{
    return [NSString stringWithFormat:@"awesome #%@", @(++m_count)];
}

@end
