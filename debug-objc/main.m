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
    NSLog(@"XXObject load...");
}

+ (void)initialize {
    NSLog(@"XXObject initialize... %@", self);
}

@end

@interface XXObjectSub : XXObject

@end

@implementation XXObjectSub

+ (void)initialize {
    NSLog(@"XXObjectSub initialize... %@", self);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XXObjectSub *subXX = [[XXObjectSub alloc] init];
        NSLog(@"subXX = %@", subXX);
    }
    return 0;
}
