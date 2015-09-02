# ZHNSingleton
Singleton with one line implementation. 

## Podfile

```ruby
platform :ios, '7.0'
pod "ZHNSingleton"
```

## Usage

### 1. Inherit your class from ZHNSingleton:
.h file:
```objc
@interface ChildSingleton : ZHNSingleton

@end
```

### 2. Override shared function:
.m file:
```objc
@implementation ChildSingleton
+ (instancetype)shared
{
    return [ChildSingleton sharedByClass:[ChildSingleton class]];
}
@end
```

### 3. Get your instance with shared method:
```objc
NSLog(@"%@", [ChildSingleton shared]);
```

### 4. Destroy singleton if needed:
```objc
[[ChildSingleton shared] destroy];
```
