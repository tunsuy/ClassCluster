//
//  main.m
//  ClassCluster
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "NSMutableArray+LogAddObject.h"
#import "RunTimeHelper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Animal *dog = [[Animal alloc] initWithAnimalType:AnimalTypeDog];
//        [dog eat];
//        [dog run];
        
#pragma mark - 验证调用父类被覆盖的方法
//        [[[dog superclass] alloc] eat];
        
#pragma mark - 实验交换方法
        NSMutableArray *mutableArr = [[NSMutableArray alloc] initWithObjects:@"hhh", @"kkk", nil];
        [mutableArr ts_logAddObject:@"jjj"];
        [RunTimeHelper getMethodInfo:class_getInstanceMethod([mutableArr class], @selector(ts_logAddObject:))];
        [RunTimeHelper getMethodInfo:class_getInstanceMethod([mutableArr class], @selector(addObject:))];
        [mutableArr addObject:@"lll"];
        
//        结果：method swizzling 确实对类簇不起作用
        
        
    }
    return 0;
}
