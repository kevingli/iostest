//
//  Animal.m
//  Tap Me
//
//  Created by ConquerSHDD on 10/18/2013.
//  Copyright (c) 2013 ConquerSHDD. All rights reserved.
//

#import "Animal.h"

@implementation Animal
@synthesize totalLegs, hasFur, animalName;
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)doTrick:(int)trickNumber
      isHungry:(BOOL)isHungry
       eatFood:(NSString*)eatFood {
    
    NSLog(@"Doing trick %i!", trickNumber);
    
    if(isHungry) {
        NSLog(@"Eating %@", eatFood);
    }
}

@end