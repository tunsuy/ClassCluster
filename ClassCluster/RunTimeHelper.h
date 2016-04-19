//
//  RunTimeHelper.h
//  ClassCluster
//
//  Created by tunsuy on 30/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface RunTimeHelper : NSObject

+ (void)getAllMethodInfo;
+ (void)getMethodInfo:(Method)method;

@end
