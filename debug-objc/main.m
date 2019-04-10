//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>

@interface XXObject : NSObject
@end

@implementation XXObject

+ (void)load {
}

@end

@interface LazyObject : NSObject
@end

@implementation LazyObject
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
