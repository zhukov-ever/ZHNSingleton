# NVBaseSingleton
Singleton with simple implementation. 
Work with numerous child classes.

**usage**

.h file:
```objc
@interface ChildSingleton : NVBaseSingleton

@end
```

.m file:
```objc
@implementation ChildSingleton
+ (instancetype)shared
{
    return [ChildSingleton sharedWithClass:[ChildSingleton class]];
}
@end
```
