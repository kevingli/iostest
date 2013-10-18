//
//  Animal.h
//  Tap Me
//
//  Created by ConquerSHDD on 10/18/2013.
//  Copyright (c) 2013 ConquerSHDD. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Animal : NSObject {
    int totalLegs;
    BOOL hasFur;
    __unsafe_unretained NSString *animalName;
}

@property (nonatomic, assign) int totalLegs;
@property (nonatomic, assign) BOOL hasFur;
@property (nonatomic, assign) NSString *animalName;

-(void)doTrick:(int)trickNumber
      isHungry:(BOOL)isHungry
       eatFood:(NSString*)eatFood;

@end