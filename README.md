# ZHNBaseSingleton
Singleton with one line implementation. 

# Podfile

```ruby
platform :ios, '7.0'
pod "ZHNBaseSingleton"
```

## Usage

### 1. Inherit your class from ZHNBaseSingleton:
.h file:
```objc
@interface ChildSingleton : ZHNBaseSingleton

@end
```

### 2. Override shared function:
.m file:
```objc
@implementation ChildSingleton
+ (instancetype)shared
{
    return [ChildSingleton sharedWithClass:[ChildSingleton class]];
}
@end
```

### 3. Get your instance with *shared* method
```objc
    NSLog(@"%@", [ChildSingleton shared]);
```
