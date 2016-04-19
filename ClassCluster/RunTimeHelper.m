//
//  RunTimeHelper.m
//  ClassCluster
//
//  Created by tunsuy on 30/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "RunTimeHelper.h"

@implementation RunTimeHelper

+ (void)getAllMethodInfo {
    unsigned int methodCount;
    Method *methods = class_copyMethodList([self class], &methodCount);
    for (int i=0; i<methodCount; i++) {
        Method method = methods[i];
        [self getMethodInfo:method];
    }
}

+ (void)getMethodInfo:(Method)method {
    //获取方法名
    SEL method_name = method_getName(method);
    NSLog(@"方法名：%@", NSStringFromSelector(method_name));
    
    //获取方法参数
    unsigned int argCount = method_getNumberOfArguments(method);
    char argName[512] = {};
    for (int j=0; j<argCount; j++) {
        method_getArgumentType(method, j, argName, 512);
        NSLog(@"参数名：%s", argName);
    }
}

+ (void)getAllProtocolInfo {
    
    
}

@end
