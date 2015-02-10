//
//  NVBaseSingleton.m
//  Capsula
//
//  Created by Nikita on 24/12/14.
//  Copyright (c) 2014 Zhn. All rights reserved.
//

#import "NVBaseSingleton.h"

@implementation NVBaseSingleton

static NSMutableDictionary* m_dictInstances;
+(id)sharedWithClass:(Class)theClass;
{
    
    NSString* _className = NSStringFromClass(theClass);
    id _instance;
    @synchronized(m_dictInstances)
    {
        if (!m_dictInstances)
            m_dictInstances = [NSMutableDictionary new];
        _instance = [m_dictInstances objectForKey:_className];
        if (!_instance)
        {
            [theClass class];
            _instance = [theClass new];
            [m_dictInstances setObject:_instance forKey:_className];
        }
    }
    return _instance;
}

+(instancetype)shared
{
    NSAssert(false, @"%s must be inherited!", __PRETTY_FUNCTION__);
    return nil;
}


@end
