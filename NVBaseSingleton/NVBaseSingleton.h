//
//  NVBaseSingleton.h
//  Capsula
//
//  Created by Nikita on 24/12/14.
//  Copyright (c) 2014 Zhn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NVBaseSingleton : NSObject

+(id)sharedWithClass:(Class)theClass;
+(instancetype)shared;


@end
