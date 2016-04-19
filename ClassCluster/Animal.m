//
//  Animal.m
//  ClassCluster
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "Animal.h"

@interface Dog : Animal

@end

@implementation Dog

- (void)run {
    NSLog(@"Dog is running !!!");
}

- (void)eat {
    NSLog(@"Dog is eatting !!!");
}

@end

@interface Cat : Animal

@end

@implementation Cat

- (void)run {
    NSLog(@"Cat is running !!!");
}

@end


@implementation Animal

//第一种：
- (instancetype)initWithAnimalType:(AnimalType)animalType {
    switch (animalType) {
        case AnimalTypeDog:
            return [[Dog alloc] init];
            break;
        case AnimalTypeCat:
            return [[Cat alloc] init];
            break;
            
        default:
            return [Animal init];
            break;
    }
}

//第二种：
//+ (instancetype)alloc {
//    if ([self class] == [Animal class]) {
//        if (/*你的条件*/) {
//            return [Dog alloc];
//        }else if (/*你的条件*/) {
//            return [Cat alloc];
//        }
//    }else {
//        return [super alloc];
//    }
//}

#pragma mark - 公共方法
- (void)eat {
    NSLog(@"都可以吃.....");
}

#pragma mark - 每个子类需要实现的方法
- (void)run {
    [[[self class] alloc] run];
}


@end
