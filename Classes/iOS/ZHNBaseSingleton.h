//
//  ZHNBaseSingleton.h
//  ZHNBaseSingleton
//
//  Created by zhukovever on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHNBaseSingleton : NSObject

+ (instancetype)sharedByClass:(Class)theClass;
+ (instancetype)shared;

/**
 Remove shared instance from list of instances.
 Note, that if you have strong reference to the singleton, instance will not be deallocated.
 */
- (void)destroy;

@end
