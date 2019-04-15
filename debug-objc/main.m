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

//+ (void)initialize {
////    [super initialize];
//    NSLog(@"XXObjectSub initialize... %@", self);
//}

// 子类实现 initialize，调用 super
//2019-04-15 13:53:04.821860+0800 debug-objc[20315:2950398] XXObject initialize... XXObject
//2019-04-15 13:53:04.821936+0800 debug-objc[20315:2950398] XXObject initialize... XXObjectSub
//2019-04-15 13:53:04.822003+0800 debug-objc[20315:2950398] XXObjectSub initialize... XXObjectSub

// 子类实现 initialize，不调用 super
//2019-04-15 13:53:32.698546+0800 debug-objc[20327:2950678] XXObject initialize... XXObject
//2019-04-15 13:53:32.698601+0800 debug-objc[20327:2950678] XXObjectSub initialize... XXObjectSub

// 子类没有实现 initialize
//2019-04-15 13:54:40.554869+0800 debug-objc[20354:2951464] XXObject initialize... XXObject
//2019-04-15 13:54:40.554933+0800 debug-objc[20354:2951464] XXObject initialize... XXObjectSub

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XXObjectSub *subXX = [[XXObjectSub alloc] init];
        NSLog(@"subXX = %@", subXX);
    }
    return 0;
}
