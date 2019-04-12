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

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL a = 8960;
        if (a) {
            NSLog(@"YES");
        } else {
            NSLog(@"NO");
        }
        NSLog(@"Hello, World!");
    }
    return 0;
}
