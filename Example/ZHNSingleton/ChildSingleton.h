//
//  ChildSingleton.h
//  ZHNSingleton
//
//  Created by zhukovever on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import <ZHNSingleton/ZHNSingleton.h>

@interface ChildSingleton : ZHNSingleton

@property (nonatomic, readonly) NSString* stringWithAwesomeString;
- (void) increaseAwesomeCounter;

@end
