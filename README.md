# ZHNBaseSingleton
Singleton with simple implementation. 
Work with numerous child classes.

### Podfile

```ruby
platform :ios, '7.0'
pod "ZHNBaseSingleton"
```

### Usage

.h file:
```objc
@interface ChildSingleton : ZHNBaseSingleton

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
