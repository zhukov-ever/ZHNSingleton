//
//  ZHNSingleton.m
//  ZHNSingleton
//
//  Created by zhukovever on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import "ZHNSingleton.h"

@implementation ZHNSingleton

#ifdef DEBUG
- (void)dealloc
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}
#endif

static NSMutableDictionary* m_dictInstances;
+ (NSMutableDictionary*)dictInstances
{
    if (!m_dictInstances)
        m_dictInstances = [NSMutableDictionary new];
    return m_dictInstances;
}

+ (instancetype)shared
{
    NSAssert(false, @"%s must be overridden!", __PRETTY_FUNCTION__);
    return nil;
}

+ (instancetype)sharedByClass:(Class)theClass;
{
    NSString* _className = NSStringFromClass(theClass);
    id _instance;
    
    NSMutableDictionary* _dictInstances = [ZHNSingleton dictInstances];
    
    @synchronized(_dictInstances)
    {
        _instance = [_dictInstances objectForKey:_className];
        if (!_instance)
        {
            _instance = [theClass new];
            [_dictInstances setObject:_instance forKey:_className];
        }
    }
    return _instance;
}

- (void)destroy
{
    BOOL _didRemove = NO;
    NSString* _className = NSStringFromClass([self class]);
    
    NSMutableDictionary* _dictInstances = [ZHNSingleton dictInstances];
    
    @synchronized(_dictInstances)
    {
        id _instance = [_dictInstances objectForKey:_className];
        if (_instance)
        {
            _didRemove = YES;
            [_dictInstances removeObjectForKey:_className];
            _instance = nil;
        }
    }
}

@end
