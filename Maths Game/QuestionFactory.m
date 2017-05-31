//
//  QuestionFactory.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames =  @[@"AdditionQuestion", @"DivisionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion"];
    }
    return self;
}

-(Question *)generateRandomQuestion{
    
//    We should create a class to handle this! The responsibility of this class is simple. It is going to randomly generate and return an instance of 1 of the 4 subclasses of Question. This is a classical design pattern called the "factory pattern".
//    
// Here's something a bit surprising though. The return type of this method should not be one of the 4 concrete subclasses of Question! Instead, the return type should be upcasted to the superclass Question.
    
    int random = arc4random_uniform(4);
    NSString *selectedType = self.questionSubclassNames[random];
    
    return [[NSClassFromString(selectedType) alloc]init];
    
    
}

@end
