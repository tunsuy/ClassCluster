//
//  NSArray+LogAddObject.m
//  ClassCluster
//
//  Created by tunsuy on 30/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "NSMutableArray+LogAddObject.h"

@implementation NSMutableArray (LogAddObject)


//Category的load也会收到调用，但顺序上在主类的load调用之后。
+ (void)load {
    NSLog(@"这是分类中的方法");
    
    
//    method swizzling 对类簇不起作用
    Method addObject = class_getInstanceMethod(self, @selector(addObject:));
    Method logAddObject = class_getInstanceMethod(self, @selector(ts_logAddObject:));
    method_exchangeImplementations(addObject, logAddObject);
    
}

- (void)ts_logAddObject:(id)obj {
    [self ts_logAddObject:obj];
    NSLog(@"增加一个实体");
}

@end
