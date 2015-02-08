# NVBaseSingleton
Base singleton for simple implementation

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
