//
//  Animal.h
//  ClassCluster
//
//  Created by tunsuy on 29/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, AnimalType) {
    AnimalTypeDog = 0,
    AnimalTypeCat
};

@interface Animal : NSObject

- (instancetype)initWithAnimalType:(AnimalType)animalType;

- (void)eat;
- (void)run;

@end
