//
//  ZHNBaseSingleton.h
//  ZHNBaseSingleton
//
//  Created by zhukovever on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHNBaseSingleton : NSObject

+(instancetype)sharedWithClass:(Class)theClass;
+(instancetype)shared;

@end
