//
//  ZHNBaseSingleton.m
//  ZHNBaseSingleton
//
//  Created by zhukovever on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import "ZHNBaseSingleton.h"

@implementation ZHNBaseSingleton

static NSMutableDictionary* m_dictInstances;
+(instancetype)sharedWithClass:(Class)theClass;
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
